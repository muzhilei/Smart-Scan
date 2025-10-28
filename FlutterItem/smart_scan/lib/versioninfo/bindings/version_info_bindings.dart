import 'package:get/get.dart';
import 'package:smart_scan/versioninfo/controllers/version_info_controllers.dart';

class version_info_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<version_info_controllers>(()=> version_info_controllers());
  }

}