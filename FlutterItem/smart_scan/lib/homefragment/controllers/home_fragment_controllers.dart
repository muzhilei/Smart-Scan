import 'package:get/get.dart';
import 'package:smart_scan/utils/CommonStatic.dart';

class home_fragment_controllers extends GetxController{

  var gridViewList = {CommonStatic.homeText,CommonStatic.homeWebAddress,CommonStatic.homeContacts,
    CommonStatic.homeWIFI,CommonStatic.homeLocation,CommonStatic.homeEvent,CommonStatic.homeClipBoard,
    CommonStatic.homeEmail,CommonStatic.homeMessage}.obs;

}