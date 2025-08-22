import 'package:get/get.dart';

class url_scan_controllers extends GetxController{

  var editeScanText = ''.obs;
  var isShowQr = false.obs;

  void getEdteScanText (var text){
    editeScanText.value = text;
    print("输入文字为：${editeScanText.value}");
    update();
  }

}