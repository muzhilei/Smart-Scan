import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:smart_scan/l10n/generated/l10n.dart';

class home_widget{

  static List<BottomNavigationBarItem> HomeBarItem(BuildContext context){
    List<BottomNavigationBarItem> homeBarItemLists = [];
    var homeItem = BottomNavigationBarItem(
      icon: Image.asset('assets/fragment_home_normal.png',scale: 1.5,), //图标
      label: S.of(context).home,  //标签
      tooltip: S.of(context).home,  //长按提示信息
      // backgroundColor: Colors.blueAccent,  //背景颜色
      activeIcon: Image.asset('assets/fragment_home_mal.png',scale: 1.5,),  //选中图标
    );
    var scanItem = BottomNavigationBarItem(
      icon: Image.asset('assets/fragment_scan_normal.png',scale: 1.5,), //图标
      label: S.of(context).scan,  //标签
      tooltip: S.of(context).scan,  //长按提示信息
      // backgroundColor: Colors.blueAccent,  //背景颜色
      activeIcon: Image.asset('assets/fragment_scan_mal.png',scale: 1.5,),  //选中图标
    );
    var settingItem = BottomNavigationBarItem(
      icon: Image.asset('assets/fragment_setting_normal.png',scale: 1.5,), //图标
      label: S.of(context).setting,  //标签
      tooltip: S.of(context).setting,  //长按提示信息
      // backgroundColor: Colors.blueAccent,  //背景颜色
      activeIcon: Image.asset('assets/fragment_setting_mal.png',scale: 1.5,),  //选中图标
    );
    homeBarItemLists.add(homeItem);
    homeBarItemLists.add(scanItem);
    homeBarItemLists.add(settingItem);
    return homeBarItemLists;
  }
}