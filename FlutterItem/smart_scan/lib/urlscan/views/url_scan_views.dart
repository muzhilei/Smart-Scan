import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/urlscan/controllers/url_scan_controllers.dart';

import '../../scanqr/views/scanqr_views.dart';
import '../../utils/CommonStatic.dart';

class url_scan_views extends GetView<url_scan_controllers>{

  TextEditingController _textcontroller = new TextEditingController(text: 'https://');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.lightGreen,
          title: Text(CommonStatic.homeWebAddress,style: TextStyle(fontSize: 20,color: Colors.white),),
          centerTitle: true,
        ),
        body:Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                TextField(
                  controller: _textcontroller,
                  decoration: InputDecoration(
                    labelText: "请输入网址",
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
                      child: Text('确认',style: TextStyle(fontSize: 18,color: Colors.white),),
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