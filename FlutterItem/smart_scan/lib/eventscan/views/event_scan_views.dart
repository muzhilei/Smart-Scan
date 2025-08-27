import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/eventscan/controllers/event_scan_controllers.dart';

import '../../utils/CommonStatic.dart';

class event_scan_views extends GetView<event_scan_controllers>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(CommonStatic.homeEvent,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "活动标题",
                      labelStyle: TextStyle(color: Colors.green,fontSize: 18),
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
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Text("全天活动",style: TextStyle(fontSize: 14,color: Colors.lightGreen)),
                ),
                SizedBox(
                  height: 10,
                  child: Switch(
                      activeTrackColor:Colors.lightGreen ,
                      value: true,
                      onChanged: (value){}
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}