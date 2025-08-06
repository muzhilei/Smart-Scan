import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/homefragment/controllers/home_fragment_controllers.dart';

class home_fragment_views extends GetView<home_fragment_controllers>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        //定义列数
        crossAxisCount: 4,
        //滚动方向
        scrollDirection: Axis.vertical,
        //横向间距
        crossAxisSpacing: 5,
        //纵向间距
        mainAxisSpacing: 5,
        //宽高比
        childAspectRatio: 1,
        //定于数据源
        children: getHomeButtonListWidget(),
      ),
    );
  }

  List<Widget> getHomeButtonListWidget(){
    return controller.gridViewList.map((value){
      return Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Image.asset('assets/icon_picture.png'),
            ),
            Text("${value}")
          ],
        ),
      );
    }).toList();
  }

}