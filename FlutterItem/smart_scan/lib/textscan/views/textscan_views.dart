import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:smart_scan/scanqr/views/scanqr_views.dart';
import 'package:smart_scan/textscan/controllers/textscan_controllers.dart';
import 'package:smart_scan/textscan/widget/textscan_widget.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

import 'package:smart_scan/l10n/generated/l10n.dart';

class textscan_views extends GetView<textscan_controllers>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(S.of(context).homeText,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body:Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: S.of(context).text_scan_input_tips,
                  labelStyle: TextStyle(color: Colors.grey),
                  // helperText: "请输入有效格式",
                  // errorText: "格式错误"
              ),
              maxLines: 1,
              onChanged: controller.getEdteScanText,
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  //设置四周圆角 角度
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  //设置四周边框
                  border: new Border.all(width: 2, color: Colors.lightGreen),
                ),
                child: Center(
                  child: Text(S.of(context).button_ok,style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
              ),
              onTap: (){
                // Fluttertoast.showToast(msg: "输出文本为 ${controller.editeScanText}");
                Get.to(scanqr_views(),arguments: {CommonStatic.ScanQRData : controller.editeScanText.value});
              },
            )
          ],
        )
      )
    );
  }

}