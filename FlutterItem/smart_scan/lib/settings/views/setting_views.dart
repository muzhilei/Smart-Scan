import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/about/bindings/about_bindings.dart';
import 'package:smart_scan/about/views/about_views.dart';
import 'package:smart_scan/settings/controllers/setting_controllers.dart';
import 'package:smart_scan/versioninfo/bindings/version_info_bindings.dart';
import 'package:smart_scan/versioninfo/views/version_info_views.dart';
import '../../l10n/generated/l10n.dart';

class setting_views extends GetView<setting_controllers>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          InkWell(
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  Image.asset('assets/icon_history.png',scale: 5,),
                  Expanded(
                      child: Text(S.of(context).history,style: TextStyle(fontSize: 20,color: Colors.black),)
                  ),
                  Icon(Icons.arrow_forward_ios,size: 20,),
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  Image.asset('assets/icon_version.png',scale: 5,),
                  Expanded(
                      child: Text(S.of(context).versionInfo,style: TextStyle(fontSize: 20,color: Colors.black),)
                  ),
                  Icon(Icons.arrow_forward_ios,size: 20,),
                ],
              ),
            ),
            onTap: (){
              Get.to(version_info_views(),binding: version_info_bindings());
            },
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                Image.asset('assets/icon_about.png',scale: 5,),
                  Expanded(
                      child: Text(S.of(context).aboutMe,style: TextStyle(fontSize: 20,color: Colors.black),)
                  ),
                  Icon(Icons.arrow_forward_ios,size: 20,),
                ],
              ),
            ),
            onTap: (){
              Get.to(about_view(),binding: about_bindings());
            },
          )
        ],
      ),
    );
  }

}