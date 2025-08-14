import 'package:get/get.dart';
import 'package:smart_scan/scan/controllers/scan_controllers.dart';

class scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<scan_controllers>(() => scan_controllers());
  }

}