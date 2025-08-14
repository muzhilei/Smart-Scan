import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';


class scan_views extends GetView{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        MobileScanner(
          onDetect: (barcode){
            final List<Barcode> barcodes = barcode.barcodes;
            final Uint8List? image = barcode.image;
            // for (final barcode in barcodes) {
            //   debugPrint('二维码找到！${barcode.rawValue}');
            // }
            Fluttertoast.showToast(msg: "二维码内容为：${barcodes[0].displayValue}");
          } ,
        )
      ],
    );
  }

}