import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/contactscan/bindings/contact_scan_bindings.dart';
import 'package:smart_scan/contactscan/views/contact_scan_views.dart';
import 'package:smart_scan/contactscan/widget/contact_scan_widget.dart';
import 'package:smart_scan/emailscan/bindings/email_scan_bindings.dart';
import 'package:smart_scan/emailscan/views/email_scan_views.dart';
import 'package:smart_scan/eventscan/bindings/event_scan_bindings.dart';
import 'package:smart_scan/eventscan/views/event_scan_views.dart';
import 'package:smart_scan/homefragment/controllers/home_fragment_controllers.dart';
import 'package:smart_scan/locationscan/bindings/location_scan_bindings.dart';
import 'package:smart_scan/locationscan/views/location_scan_views.dart';
import 'package:smart_scan/messagescan/bindings/message_scan_bindings.dart';
import 'package:smart_scan/messagescan/views/message_scan_views.dart';
import 'package:smart_scan/textscan/bindings/textscan_bindings.dart';
import 'package:smart_scan/textscan/views/textscan_views.dart';
import 'package:smart_scan/urlscan/bindings/url_scan_bindings.dart';
import 'package:smart_scan/urlscan/views/url_scan_views.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

import '../../scanqr/views/scanqr_views.dart';
import '../../wifiscan/bindings/wifi_scan_bindings.dart';
import '../../wifiscan/views/wifi_scan_views.dart';

import 'package:smart_scan/l10n/generated/l10n.dart';

class home_fragment_views extends GetView<home_fragment_controllers>{

  var controllers = Get.put(home_fragment_controllers());
  BuildContext? viewContext;
  @override
  Widget build(BuildContext context) {
    viewContext = context;
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        //定义列数
        crossAxisCount: 4,
        //滚动方向
        scrollDirection: Axis.vertical,
        //横向间距
        crossAxisSpacing: 5,
        //纵向间距
        mainAxisSpacing: 5,
        //宽高比
        childAspectRatio: 1,
        //定于数据源
        children: getHomeButtonListWidget(context),
      )
    );
  }

  List<Widget> getHomeButtonListWidget(BuildContext context){
    return controller.getMenuList(context).map((value){
      return InkWell(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: getIconItem(value),
              ),
              Text("${value}")
            ],
          ),
        ),
        onTap: (){
          switch(controller.getMenuListNum(value)){
            case 0:
              Get.to(textscan_views(),binding: textscan_bindings());
              break;
            case 1:
              Get.to(url_scan_views(),binding: url_scan_bindings());
              break;
            case 2:
              Get.to(contact_scan_views(),binding: contact_scan_bindings());
              break;
            case 8:
              Get.to(message_scan_views(),binding: message_scan_bindings());
              break;
            case 7:
              Get.to(email_scan_views(),binding: email_scan_bindings());
              break;
            case 6:
              controller.getClipboardText().then((value){
                Get.to(scanqr_views(),arguments: {CommonStatic.ScanQRData : value});
              });
              break;
            case 5:
              Get.to(event_scan_views(),binding: event_scan_bindings());
              break;
            case 3:
              Get.to(wifi_scan_views(),binding: wifi_scan_bindings());
              break;
            case 4:
              Get.to(location_scan_views(),binding: location_scan_bindings());
              break;
          }
        },
      );
    }).toList();
  }

  Widget getIconItem(String value){
    Widget? icon;
    switch(controller.getMenuListNum(value)){
      case 0:
        icon = Image.asset('assets/icon_text.png',scale: 1.5,);
        break;
      case 1:
        icon = Image.asset('assets/icon_web.png',scale: 1.5,);
        break;
      case 2:
        icon = Image.asset('assets/icon_content.png',scale: 1.5,);
        break;
      case 8:
        icon = Image.asset('assets/icon_ms.png',scale: 1.5,);
        break;
      case 7:
        icon = Image.asset('assets/icon_emal.png',scale: 1.5,);
        break;
      case 6:
        icon = Image.asset('assets/icon_boarnd.png',scale: 1.5,);
        break;
      case 5:
        icon = Image.asset('assets/icon_event.png',scale: 1.5,);
        break;
      case 3:
        icon = Image.asset('assets/icon_wifi.png',scale: 1.5,);
        break;
      case 4:
        icon = Image.asset('assets/icon_location.png',scale: 1.5,);
        break;
    }
    return icon!;
  }
}