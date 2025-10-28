import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class CommonStatic {

  static const String homeText = "文本";
  static const String homeWebAddress = "网址";
  static const String homeContacts = "联系人";
  static const String homeWIFI = "WIFI";
  static const String homeLocation = "地点";
  static const String homeEvent = "事件";
  static const String homeClipBoard = "剪切板";
  static const String homeEmail = "电子邮箱";
  static const String homeMessage = "短信";
  static const String scanQrShare = "二维码分享";
  static const String scanQrResult = "扫码结果";
  static const String versionInfo = "版本信息";
  static const String aboutMe = "关于我们";

  static const String ScanQRData = "SCAN_QR_DATA";




  static String getCurrentTime() {
    final now = DateTime.now();
    String formattedTime = "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}";
    return formattedTime;
  }


  //获取本地地址
  Future<String> getLocalPath() async {
    final directory = await getApplicationSupportDirectory();
    return directory.path;
  }

  Future<File> saveImageToLocal(Uint8List imageBytes, String imageName) async {
    final directory = await getLocalPath();
    final path = join(directory, imageName);
    final file = File(path);
    await file.writeAsBytes(imageBytes); // 保存图片到本地路径
    return file; // 返回File对象，可用于后续操作，如分享等
  }

  String join(String path ,String imageName){
    String filePath = "$path/$imageName";
    print("filePath ======= $filePath");
    return filePath;
  }


}