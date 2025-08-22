import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/contactscan/controllers/contact_scan_controllers.dart';

import '../../scanqr/views/scanqr_views.dart';
import '../../utils/CommonStatic.dart';

class contact_scan_views extends GetView<contact_scan_controllers>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightGreen,
        title: Text(CommonStatic.homeContacts,style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "名",
                        labelStyle: TextStyle(color: Colors.green),
                        // helperText: "请输入有效格式",
                        // errorText: "格式错误"
                      ),
                      maxLines: 1,
                      onChanged: controller.setEditeNameText,
                    ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "姓",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeSurNameText,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "公司",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeCompanyText,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "职称",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeTitleText,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "手机号码",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditePhoneText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "电子邮箱",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeEmailText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      labelText: "街道地址",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeStreetAddressText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "邮政编码",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditePostalCodeText,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "城市",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeCityText,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "地区",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeRegionText,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "国家",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeCountryText,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "网址",
                      labelStyle: TextStyle(color: Colors.green),
                      // helperText: "请输入有效格式",
                      // errorText: "格式错误"
                    ),
                    maxLines: 1,
                    onChanged: controller.setEditeURLText,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            // 溅撒颜色设为透明
            splashColor: Colors.transparent,
            // 高亮颜色设为透明
            highlightColor: Colors.transparent,
            // 通过 overlayColor 覆盖所有状态的颜色
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            child: Container(
              decoration: BoxDecoration(
                //设置四周圆角 角度
                borderRadius: BorderRadius.all(Radius.circular(20)),
                //设置四周边框
                border: new Border.all(width: 2, color: Colors.lightGreen),
                color: Colors.lightGreen
              ),
              margin: EdgeInsets.only(top: 150,left: 40,right: 40),
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text('创建',style: TextStyle(fontSize: 16,color: Colors.white),),
              ),
            ),
            onTap: (){
              Get.to(scanqr_views(),arguments: {CommonStatic.ScanQRData : controller.getContextText()});
            },
          ),
        ],
      ),
    );
  }

}