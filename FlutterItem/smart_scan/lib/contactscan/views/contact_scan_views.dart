import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_scan/contactscan/controllers/contact_scan_controllers.dart';

import 'package:smart_scan/l10n/generated/l10n.dart';
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
        title: Text(S.of(context).homeContacts,style: TextStyle(fontSize: 20,color: Colors.white),),
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
                        labelText: S.of(context).contact_scan_name,
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
                      labelText: S.of(context).contact_scan_surname,
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
                      labelText: S.of(context).contact_scan_company,
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
                      labelText: S.of(context).contact_scan_title,
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
                      labelText: S.of(context).contact_scan_phone,
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
                      labelText: S.of(context).contact_scan_email,
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
                      labelText: S.of(context).contact_scan_street,
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
                      labelText: S.of(context).contact_scan_code,
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
                      labelText: S.of(context).contact_scan_city,
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
                      labelText: S.of(context).contact_scan_area,
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
                      labelText: S.of(context).contact_scan_country,
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
                      labelText: S.of(context).homeWebAddress,
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
              margin: EdgeInsets.only(top: 100,left: 40,right: 40),
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text(S.of(context).button_ok,style: TextStyle(fontSize: 16,color: Colors.white),),
              ),
            ),
            onTap: (){
              Get.to(scanqr_views(),arguments: {CommonStatic.ScanQRData : controller.getContextText(context)});
            },
          ),
        ],
      ),
    );
  }

}