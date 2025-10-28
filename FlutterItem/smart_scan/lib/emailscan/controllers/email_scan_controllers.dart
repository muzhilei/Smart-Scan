import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../l10n/generated/l10n.dart';

class email_scan_controllers extends GetxController{

  var editeEmail = ''.obs;
  var editeTheme = ''.obs;
  var editeMessage = ''.obs;

  void setEditeEmail(String value){
    editeEmail.value = value;
    update();
  }

  void setEditeTheme(String value){
    editeTheme.value = value;
    update();
  }

  void setEditeMessage(String value){
    editeMessage .value = value;
    update();
  }

  String getContextText(BuildContext context){
    String data = "\n ${S.of(context).email_scan_input}：${editeEmail.value} \n ${S.of(context).email_scan_theme}：${editeTheme.value} \n ${S.of(context).email_scan_message}：${editeMessage.value}";
    return data;
  }

}