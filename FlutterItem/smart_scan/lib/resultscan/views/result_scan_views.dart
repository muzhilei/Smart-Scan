import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/resultscan/controllers/result_scan_controllers.dart';
import 'package:smart_scan/l10n/generated/l10n.dart';
import '../../scanqr/views/scanqr_views.dart';
import '../../utils/CommonStatic.dart';

class result_scan_views extends GetView<result_scan_controllers>{


  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(S.of(context).scanQrResult,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${S.of(context).qr_code_content}：${data[CommonStatic.ScanQRData]}",style: TextStyle(fontSize: 16,color: Colors.black),),
          Text(CommonStatic.getCurrentTime(),style: TextStyle(fontSize: 12,color: Colors.black),),
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
                child: Text(S.of(context).qr_code_check,style: TextStyle(fontSize: 16,color: Colors.white),),
              ),
            ),
            onTap: (){
              Get.to(scanqr_views(),arguments: {CommonStatic.ScanQRData : data[CommonStatic.ScanQRData]});
            },
          ),
        ],
      ),
    );
  }
}