import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

import 'package:smart_scan/l10n/generated/l10n.dart';

class home_fragment_controllers extends GetxController{

  Set<String>? gridViewList;

  Future<String> getClipboardText() async {
    // Paste with error handling
    try {
      String text = await FlutterClipboard.paste();
      print("text ======= ${text}");
      return text;
    } on ClipboardException catch (e) {
      print('Paste failed: ${e.message}');
      return "";
    }
  }

  Set<String> getMenuList(BuildContext context){
    var gridViewLists = {S.of(context).homeText,S.of(context).homeWebAddress,S.of(context).homeContacts,
      S.of(context).homeWIFI,S.of(context).homeLocation,S.of(context).homeEvent,S.of(context).homeClipBoard,
      S.of(context).homeEmail,S.of(context).homeMessage};
    gridViewList = gridViewLists;
    update();
    return gridViewLists;
  }

  int getMenuListNum(String value){
    int index = gridViewList!.toList().indexWhere((element) => element == value);
    if (index != -1) {
      print('元素 "$value" 的下标是 $index');
      return index;
    } else {
      print('元素 "$value" 不在集合中');
      return -1;
    }
  }

}