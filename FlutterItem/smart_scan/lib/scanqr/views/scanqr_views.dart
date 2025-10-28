import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smart_scan/scanqr/controllers/scanqr_controllers.dart';
import 'package:smart_scan/scanqr/widget/scanqr_widget.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

import 'package:smart_scan/l10n/generated/l10n.dart';

class scanqr_views extends GetView<scanqr_controllers>{

  //Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();



  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(S.of(context).scanQrShare,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Screenshot(
              child: scanqr_widget.createBody(data[CommonStatic.ScanQRData]),
              controller: screenshotController
          ),
          Text("${S.of(context).qr_code_content}：${data[CommonStatic.ScanQRData]}",style: TextStyle(fontSize: 16,color: Colors.black),),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 40,
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(child: Text(S.of(context).qr_code_share,style: TextStyle(fontSize: 14,color: Colors.white),),),
                      ),
                      onTap: (){
                        screenshotController.capture().then((Uint8List? image) {
                          String fileName = CommonStatic.getCurrentTime()+"QRCode.png";
                          CommonStatic().saveImageToLocal(image!, fileName).then((file){
                            XFile Xfile = XFile(file.path);
                            Share.shareXFiles([Xfile],text: "QRcode");
                          });
                        }).catchError((onError) {
                          print(onError);
                        });
                      },
                    )
                ),
                // Expanded(
                //     child: InkWell(
                //       child: Container(
                //         margin: EdgeInsets.only(left: 10,right: 10),
                //         decoration: BoxDecoration(
                //           color: Colors.blue,
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //         ),
                //         child: Center(child: Text("导出",style: TextStyle(fontSize: 14,color: Colors.white),),),
                //       ),
                //       onTap: (){
                //
                //       },
                //     )
                // ),
                // Expanded(
                //     child: InkWell(
                //       child: Container(
                //         margin: EdgeInsets.only(right: 20),
                //         decoration: BoxDecoration(
                //           color: Colors.blue,
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //         ),
                //         child: Center(child: Text("保存",style: TextStyle(fontSize: 14,color: Colors.white),),),
                //       ),
                //       onTap: (){
                //
                //       },
                //     )
                // )
              ],
            ),
          )
        ],
      ),
    );
  }

}