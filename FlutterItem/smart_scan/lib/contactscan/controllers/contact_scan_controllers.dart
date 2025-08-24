import 'package:get/get.dart';

class contact_scan_controllers extends GetxController{

  var editeNameText = ''.obs;
  var editeSurNameText = ''.obs;
  var editeCompanyText = ''.obs;
  var editeTitleText = ''.obs;
  var editePhoneText = ''.obs;
  var editeEmailText = ''.obs;
  var editeStreetAddressText = ''.obs;
  var editePostalCodeText = ''.obs;
  var editeCityText = ''.obs;
  var editeRegionText = ''.obs;
  var editeCountryText = ''.obs;
  var editeURLText = ''.obs;

  void setEditeNameText (var text){
    editeNameText.value = text;
    print("输入文字为：${editeNameText.value}");
    update();
  }

  void setEditeSurNameText (var text){
    editeSurNameText.value = text;
    print("输入文字为：${editeSurNameText.value}");
    update();
  }

  void setEditeCompanyText (var text){
    editeCompanyText.value = text;
    print("输入文字为：${editeCompanyText.value}");
    update();
  }

  void setEditeTitleText (var text){
    editeTitleText.value = text;
    print("输入文字为：${editeTitleText.value}");
    update();
  }

  void setEditePhoneText (var text){
    editePhoneText.value = text;
    print("输入文字为：${editePhoneText.value}");
    update();
  }

  void setEditeEmailText (var text){
    editeEmailText.value = text;
    print("输入文字为：${editeEmailText.value}");
    update();
  }

  void setEditeStreetAddressText (var text){
    editeStreetAddressText.value = text;
    print("输入文字为：${editeStreetAddressText.value}");
    update();
  }

  void setEditePostalCodeText (var text){
    editePostalCodeText.value = text;
    print("输入文字为：${editePostalCodeText.value}");
    update();
  }

  void setEditeCityText (var text){
    editeCityText.value = text;
    print("输入文字为：${editeCityText.value}");
    update();
  }

  void setEditeRegionText (var text){
    editeRegionText.value = text;
    print("输入文字为：${editeRegionText.value}");
    update();
  }

  void setEditeCountryText (var text){
    editeCountryText.value = text;
    print("输入文字为：${editeCountryText.value}");
    update();
  }

  void setEditeURLText (var text){
    editeURLText.value = text;
    print("输入文字为：${editeURLText.value}");
    update();
  }

  String getContextText(){
    String result = "\n 名：${editeNameText.value} 姓： ${editeSurNameText.value} \n "
        "公司: ${editeCompanyText.value} 职称：${editeTitleText.value} \n "
        "手机号码：${editePhoneText.value} \n "
        "电子邮箱：${editeEmailText.value} \n "
        "街道地址：${editeStreetAddressText.value} \n "
        "邮政编码：${editePostalCodeText.value} 城市：${editeCityText.value} \n"
        " 地区：${editeRegionText.value} 国家：${editeCountryText.value} \n "
        "URL：${editeURLText.value}";

    if(result.isEmpty){
      result = "没有输入正确的数据，请返回查看";
    }

    return result;
  }

}