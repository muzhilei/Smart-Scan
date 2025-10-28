import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../l10n/generated/l10n.dart';

class location_scan_controllers extends GetxController{

  var editeLatitude = ''.obs;
  var editeLongitude = ''.obs;

  void setEditeLatitude(String value){
    editeLatitude.value = value;
    update();
  }

  void setEditeLongitude(String value){
    editeLongitude.value = value;
    update();
  }

  String getContextText(BuildContext context){
    return "\n ${S.of(context).location_scan_latitude}： ${editeLatitude.value}  ${S.of(context).location_scan_longitude}： ${editeLongitude.value}";
  }

}