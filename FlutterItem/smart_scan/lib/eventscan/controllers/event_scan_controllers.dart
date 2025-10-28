import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../l10n/generated/l10n.dart';

class event_scan_controllers extends GetxController{

  var editeLiveTitle = ''.obs;
  var editeVenue = ''.obs;
  var editeDescription = ''.obs;

  RxString startDate = "".obs;
  RxString startTimeDate = "".obs;
  RxString endDate = "".obs;
  RxString endTimeDate = "".obs;
  RxBool switchAllDay = false.obs;

  void setEndTimeDate(String value){
    endTimeDate.value = value;
    update();
  }

  void setStartTimeDate(String value){
    startTimeDate.value = value;
    update();
  }

  void setStartDate(String value){
    startDate.value = value;
    update();
  }

  void setEndDate(String value){
    endDate.value = value;
    update();
  }


  void setEditeLiveTitle(String value){
    editeLiveTitle.value = value;
    update();
  }

  void setEditeVenue(String value){
    editeVenue.value = value;
    update();
  }

  void setEditeDescription(String value){
    editeDescription.value = value;
    update();
  }

  void setSwitchAllDay(bool value){
    switchAllDay.value = value;
    // print('value == ${switchAllDay.value}');
    update();
  }

  String getContextText(BuildContext context){
    if(switchAllDay.value){
      setStartTimeDate("");
      setEndTimeDate("");
    }
    String data = "\n ${S.of(context).event_scan_event_title}：${editeLiveTitle.value} \n ${S.of(context).event_scan_star_date}：${startDate.value}  ${S.of(context).event_scan_star_time}：${startTimeDate.value} \n "
        "${S.of(context).event_scan_stop_date}：${endDate.value}  ${S.of(context).event_scan_stop_time}：${endTimeDate.value}  \n ${S.of(context).event_scan_venue}：${editeVenue.value} \n ${S.of(context).event_scan_description}：${editeDescription.value}";
    return data;
  }

}