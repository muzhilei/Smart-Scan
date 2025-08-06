import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class home_widget{

  static Widget createBody(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: QrImageView(
            data: "Flutter生成二维码文字",
            size: 200.0,
            embeddedImage: AssetImage("assets/about_icon.png"),
            embeddedImageStyle: QrEmbeddedImageStyle(size: Size(30,30)),
          ),
        )
      ],
    );
  }

  static List<BottomNavigationBarItem> HomeBarItem(){
    List<BottomNavigationBarItem> homeBarItemLists = [];
    var homeItem = BottomNavigationBarItem(
      icon: Icon(Icons.home), //图标
      label: "首页",  //标签
      tooltip: "首页",  //长按提示信息
      backgroundColor: Colors.blueAccent,  //背景颜色
      activeIcon: Icon(Icons.maps_home_work),  //选中图标
    );
    var settingItem = BottomNavigationBarItem(
      icon: Icon(Icons.settings), //图标
      label: "设置",  //标签
      tooltip: "设置",  //长按提示信息
      backgroundColor: Colors.blueAccent,  //背景颜色
      activeIcon: Icon(Icons.settings_suggest_sharp),  //选中图标
    );
    homeBarItemLists.add(homeItem);
    homeBarItemLists.add(settingItem);
    return homeBarItemLists;
  }
}