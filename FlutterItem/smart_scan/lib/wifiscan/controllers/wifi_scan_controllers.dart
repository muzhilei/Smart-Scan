import 'package:flutter/material.dart';
import 'package:get/get.dart';

class wifi_scan_controllers extends GetxController{

  final List<String> menu = ['WPA/WPA2/WPA3', 'WEP'];

  var dropdownValue = ''.obs;
  var editeWIFIName = ''.obs;
  var editeWIFIPass = ''.obs;

  String initDropDownValue(){
    dropdownValue.value = menu.first;
    update();
    return dropdownValue.value;
  }

  void setEditeWiFiName(String value){
    editeWIFIName.value = value;
    update();
  }

  void setEditeWiFiPass(String value){
    editeWIFIPass.value = value;
    update();
  }

  void setSelectMenu(String? value){
    print("选中了菜单为：$value");
    dropdownValue.value = value!;
    update();
  }

  List<DropdownMenuEntry<String>> buildMenuList() {
    return menu.map((String value) {
      return DropdownMenuEntry<String>(value: value, label: value);
    }).toList();
  }

  String getContextText(){
    return "\n 网络名称： ${editeWIFIName.value} \n ${dropdownValue.value} \n 密码： ${editeWIFIPass.value}";
  }

}