import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/versioninfo/bindings/version_info_bindings.dart';
import 'package:smart_scan/versioninfo/controllers/version_info_controllers.dart';

import '../../l10n/generated/l10n.dart';
import '../../utils/CommonStatic.dart';

class version_info_views extends GetView<version_info_controllers>{


  @override
  Widget build(BuildContext context) {
    controller.getAppInfo();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(S.of(context).versionInfo,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(child: Obx(()=> Text("${S.of(context).version_text}：V${controller.version_num}",style: TextStyle(color: Colors.black,fontSize: 20))),
      ),
    );
  }
}