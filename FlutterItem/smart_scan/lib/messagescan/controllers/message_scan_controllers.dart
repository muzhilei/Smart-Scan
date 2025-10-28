import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../l10n/generated/l10n.dart';

class message_scan_controllers extends GetxController{

  var editePhone = ''.obs;
  var editeMessage = ''.obs;

  void setEditePhone(String value){
    editePhone.value = value;
    update();
  }

  void setEditeMessage(String value){
    editeMessage.value = value;
    update();
  }

  String getContextText(BuildContext context){
    String data = "\n ${S.of(context).contact_scan_phone}：${editePhone.value} \n ${S.of(context).email_scan_message}：${editeMessage.value}";
    return data;
  }
}