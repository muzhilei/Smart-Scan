import 'package:flutter/cupertino.dart';
import 'package:qr_flutter/qr_flutter.dart';

class scanqr_widget{

  static Widget createBody(var datas){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: QrImageView(
            data: datas,
            size: 300.0,
            embeddedImage: AssetImage("assets/about_icon.png"),
            embeddedImageStyle: QrEmbeddedImageStyle(size: Size(30,30)),
          ),
        )
      ],
    );
  }

}