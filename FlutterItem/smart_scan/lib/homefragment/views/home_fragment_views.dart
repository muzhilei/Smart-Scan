import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:smart_scan/homefragment/controllers/home_fragment_controllers.dart';
import 'package:smart_scan/textscan/bindings/textscan_bindings.dart';
import 'package:smart_scan/textscan/views/textscan_views.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

class home_fragment_views extends GetView<home_fragment_controllers>{

  var controllers = Get.put(home_fragment_controllers());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height,
      child: Obx(() =>
          GridView.count(
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
            children: getHomeButtonListWidget(),
          )
      ),
    );
  }

  List<Widget> getHomeButtonListWidget(){
    return controller.gridViewList.map((value){
      return InkWell(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Image.asset('assets/icon_picture.png'),
              ),
              Text("${value}")
            ],
          ),
        ),
        onTap: (){
          switch(value){
            case CommonStatic.homeText:
              Get.to(textscan_views(),binding: textscan_bindings());
              break;
            case CommonStatic.homeWebAddress:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeWebAddress}");
              break;
            case CommonStatic.homeContacts:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeContacts}");
              break;
            case CommonStatic.homeMessage:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeMessage}");
              break;
            case CommonStatic.homeEmail:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeEmail}");
              break;
            case CommonStatic.homeClipBoard:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeClipBoard}");
              break;
            case CommonStatic.homeEvent:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeEvent}");
              break;
            case CommonStatic.homeWIFI:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeWIFI}");
              break;
            case CommonStatic.homeLocation:
              Fluttertoast.showToast(msg: "点击了 ${CommonStatic.homeLocation}");
              break;
          }
        },
      );
    }).toList();
  }

}