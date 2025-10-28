import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_scan/about/bindings/about_bindings.dart';
import 'package:smart_scan/l10n/generated/l10n.dart';
import '../../utils/CommonStatic.dart';

class about_view extends GetView<about_bindings>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(S.of(context).aboutMe,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body:Container(
        margin: EdgeInsets.only(top: 100),
        child: Center(
            child: Column(
              children: [
                Text("QQ：280621336",style: TextStyle(color: Colors.black,fontSize: 20)),
                Text("Web：www.xiaomashi.com",style: TextStyle(color: Colors.black,fontSize: 20)),
                Text("E-mail：xiaomashi2025@gmail.com",style: TextStyle(color: Colors.black,fontSize: 20)),
              ],
            )
        ),
      )
    );
  }
}