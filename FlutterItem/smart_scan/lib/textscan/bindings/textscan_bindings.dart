import 'package:get/get.dart';
import 'package:smart_scan/textscan/controllers/textscan_controllers.dart';

class textscan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<textscan_controllers>(() => textscan_controllers());
  }

}