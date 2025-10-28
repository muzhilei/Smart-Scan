import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/eventscan/controllers/event_scan_controllers.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

import 'package:smart_scan/l10n/generated/l10n.dart';
import '../../scanqr/views/scanqr_views.dart';




class event_scan_views extends GetView<event_scan_controllers>{



  @override
  Widget build(BuildContext context) {
    controller.setStartTimeDate(S.of(context).event_scan_star_time);
    controller.setStartDate(S.of(context).event_scan_star_date);
    controller.setEndTimeDate(S.of(context).event_scan_stop_time);
    controller.setEndDate(S.of(context).event_scan_stop_date);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(S.of(context).homeEvent,style: TextStyle(fontSize: 20,color: Colors.white),),
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
                      labelText: S.of(context).event_scan_event_title,
                      labelStyle: TextStyle(color: Colors.lightGreen,fontSize: 18),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeLiveTitle,
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
                  child: Text(S.of(context).event_scan_all_day,style: TextStyle(fontSize: 14,color: Colors.lightGreen)),
                ),
                Transform.scale(
                  scale: 0.8,
                  child: Obx(() => Switch(
                      activeTrackColor:Colors.lightGreen ,
                      value: controller.switchAllDay.value,
                      onChanged: controller.setSwitchAllDay
                  ),)
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey, // 分割线颜色
            thickness: 1.0, // 分割线厚度
            indent: 0, // 分割线起始的缩进
            endIndent: 0, // 分割线结束的缩进
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Obx((){
                    return InkWell(
                      child: Text(controller.startDate.value,style: TextStyle(fontSize: 14,color: Colors.lightGreen),),
                      onTap: (){
                        _selectStartDate(context);
                      },
                    );
                  }),
                ),
                Expanded(
                  child: Obx((){
                    if(!controller.switchAllDay.value){
                      return InkWell(
                        child: Text(controller.startTimeDate.value,style: TextStyle(fontSize: 14,color: Colors.lightGreen),),
                        onTap: (){
                          _selectStartTime(context);
                        },
                      );
                    }else{
                      return Text('');
                    }
                  }),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey, // 分割线颜色
            thickness: 1.0, // 分割线厚度
            indent: 0, // 分割线起始的缩进
            endIndent: 0, // 分割线结束的缩进
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Obx((){
                    return InkWell(
                      child: Text(controller.endDate.value,style: TextStyle(fontSize: 14,color: Colors.lightGreen),),
                      onTap: (){
                        _selectEndDate(context);
                      },
                    );
                  }),
                ),
                Expanded(
                  child:  Expanded(
                    child: Obx((){
                      if(!controller.switchAllDay.value){
                        return InkWell(
                          child: Text(controller.endTimeDate.value,style: TextStyle(fontSize: 14,color: Colors.lightGreen),),
                          onTap: (){
                            _selectEndTime(context);
                          },
                        );
                      }else{
                        return Text('');
                      }
                    }),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey, // 分割线颜色
            thickness: 1.0, // 分割线厚度
            indent: 0, // 分割线起始的缩进
            endIndent: 0, // 分割线结束的缩进
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: S.of(context).event_scan_venue,
                      labelStyle: TextStyle(color: Colors.lightGreen,fontSize: 16),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeVenue,
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
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: S.of(context).event_scan_description,
                      labelStyle: TextStyle(color: Colors.lightGreen,fontSize: 18),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    onChanged: controller.setEditeDescription,
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
                child: Text(S.of(context).button_ok,style: TextStyle(fontSize: 16,color: Colors.white),),
              ),
            ),
            onTap: (){
              Get.to(scanqr_views(),arguments: {CommonStatic.ScanQRData : controller.getContextText(context)});
            },
          ),
        ],
      ),
    );
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          // Adjust text scale factor for all screens
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
    if (picked != null) {
      print('用户选择的时间: $picked');
      String formattedDate = '${picked.hour}:${picked.minute}';
      controller.setEndTimeDate(formattedDate);
    }
  }


  Future<void> _selectStartTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          // Adjust text scale factor for all screens
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
    if (picked != null) {
      print('用户选择的时间: $picked');
      String formattedDate = '${picked.hour}:${picked.minute}';
      controller.setStartTimeDate(formattedDate);
    }
  }

  Future<void> _selectStartDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      print('用户选择的日期: $pickedDate');
      String formattedDate = '${pickedDate.year}-${pickedDate.month}-${pickedDate.day}';
      controller.setStartDate(formattedDate);
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      print('用户选择的日期: $pickedDate');
      String formattedDate = '${pickedDate.year}-${pickedDate.month}-${pickedDate.day}';
      controller.setEndDate(formattedDate);
    }
  }

}