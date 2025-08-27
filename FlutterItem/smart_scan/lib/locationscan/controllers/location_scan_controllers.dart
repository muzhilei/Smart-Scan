import 'package:get/get.dart';

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

  String getContextText(){
    return "\n 纬度： ${editeLatitude.value}  经度： ${editeLongitude.value}";
  }

}