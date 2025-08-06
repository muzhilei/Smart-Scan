import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/settings/controllers/setting_controllers.dart';

class setting_views extends GetView<setting_controllers>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Text('设置'),
      ),
    );
  }

}