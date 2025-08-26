import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smart_scan/scanqr/widget/scanqr_widget.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

class scanqr_views extends GetView{


  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(CommonStatic.scanQrShare,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          scanqr_widget.createBody(data[CommonStatic.ScanQRData]),
          Text("二维码内容为：${data[CommonStatic.ScanQRData]}",style: TextStyle(fontSize: 16,color: Colors.black),),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 40,
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(child: Text("分享",style: TextStyle(fontSize: 14,color: Colors.white),),),
                      ),
                      onTap: (){

                      },
                    )
                ),
                Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(child: Text("导出",style: TextStyle(fontSize: 14,color: Colors.white),),),
                      ),
                      onTap: (){

                      },
                    )
                ),
                Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(child: Text("保存",style: TextStyle(fontSize: 14,color: Colors.white),),),
                      ),
                      onTap: (){

                      },
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}