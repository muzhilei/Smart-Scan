import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/wifiscan/controllers/wifi_scan_controllers.dart';

import '../../utils/CommonStatic.dart';

class wifi_scan_views extends GetView<wifi_scan_controllers>{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(CommonStatic.homeWIFI,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5,left: 10,right: 10),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "网络名称",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    // onChanged: controller.setEditeURLText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5,left: 10,right: 10),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "网络名称",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    // onChanged: controller.setEditeURLText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5,left: 10,right: 10),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "密码",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    // onChanged: controller.setEditeURLText,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            // 溅撒颜色设为透明
            splashColor: Colors.transparent,
            // 高亮颜色设为透明
            highlightColor: Colors.transparent,
            // 通过 overlayColor 覆盖所有状态的颜色
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            child: Container(
              decoration: BoxDecoration(
                //设置四周圆角 角度
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  //设置四周边框
                  border: new Border.all(width: 2, color: Colors.lightGreen),
                  color: Colors.lightGreen
              ),
              margin: EdgeInsets.only(top: 100,left: 40,right: 40),
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text('创建',style: TextStyle(fontSize: 16,color: Colors.white),),
              ),
            ),
            onTap: (){
              // Get.to(scanqr_views(),arguments: {CommonStatic.ScanQRData : controller.getContextText()});
            },
          ),
        ],
      ),
    );
  }
  
}