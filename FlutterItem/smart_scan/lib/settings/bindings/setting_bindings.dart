import 'package:get/get.dart';
import 'package:smart_scan/settings/controllers/setting_controllers.dart';

class setting_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<setting_controllers>(() => setting_controllers());
  }

}