import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/home/views/home_views.dart';
import 'package:smart_scan/splash/controllers/splash_controllers.dart';
import 'package:smart_scan/splash/widget/splash_widget.dart';

class splash_views extends GetView<splash_controllers>{


  @override
  Widget build(BuildContext context) {
    _navigateToHome();
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Icon(Icons.insert_comment_sharp,size: 50,),
      )
    );
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3)); // 延迟3秒作为示例
    Get.offNamed('/home');
  }


}