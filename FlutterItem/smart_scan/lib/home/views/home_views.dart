import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/home/controllers/home_controllers.dart';
import 'package:smart_scan/home/widget/home_widget.dart';
import 'package:smart_scan/homefragment/controllers/home_fragment_controllers.dart';
import 'package:smart_scan/homefragment/views/home_fragment_views.dart';
import 'package:smart_scan/settings/views/setting_views.dart';

class home_views extends GetView<home_controllers>{

  //界面集合
  final getPage = [
    home_fragment_views(),
    setting_views()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:
      Center(child: Text('Smart Scan',style: TextStyle(fontSize: 22,color: Colors.white),),),
        backgroundColor: Colors.lightGreen,
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       Obx(()=> Text('Count : ${controller.count}')),
      //       Expanded(child: home_widget.createBody())
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: controller.increment,
      //   child: Icon(Icons.add),
      // ),
      body: Obx(() => getPage[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() =>
          BottomNavigationBar(
            //导航项数组
            items: home_widget.HomeBarItem(),
            //当前选中项的索引
            currentIndex: controller.currentIndex.value,
            //点击导航项时触发的回调函数
            onTap: controller.onItemTapped,
            //自定义选择项颜色
            selectedItemColor: Colors.blue,
            //自定义未选中项颜色
            unselectedItemColor: Colors.green,
            //导航栏背景颜色
            backgroundColor: Colors.white,
            //导航栏的阴影大小
            elevation: 8,

            // // 导航栏的形状，这里设置为圆角
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),

            // 自定义选中项的图标主题
            selectedIconTheme: IconThemeData(
              size: 30.0, // 选中图标大小
            ),

            // 自定义未选中项的图标主题
            unselectedIconTheme: IconThemeData(
              size: 25.0, // 未选中图标大小
            ),

            // 自定义选中项的文字样式
            selectedLabelStyle: TextStyle(
              fontSize: 14.0, // 选中文字大小
              fontWeight: FontWeight.bold, // 文字加粗
            ),

            // 自定义未选中项的文字样式
            unselectedLabelStyle: TextStyle(
              fontSize: 12.0, // 未选中文字大小
            ),
          )
      ),
    );
  }

}