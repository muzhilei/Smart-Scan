import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/settings/controllers/setting_controllers.dart';

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
                  Icon(Icons.history,size: 30,),
                  Expanded(
                      child: Text('历史记录',style: TextStyle(fontSize: 20,color: Colors.black),)
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
                  Icon(Icons.verified_user_outlined,size: 30,),
                  Expanded(
                      child: Text('版本信息',style: TextStyle(fontSize: 20,color: Colors.black),)
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
                  Icon(Icons.adb,size: 30,),
                  Expanded(
                      child: Text('关于我们',style: TextStyle(fontSize: 20,color: Colors.black),)
                  ),
                  Icon(Icons.arrow_forward_ios,size: 20,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}