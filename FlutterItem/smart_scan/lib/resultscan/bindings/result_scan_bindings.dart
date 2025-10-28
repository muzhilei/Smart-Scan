import 'package:get/get.dart';
import 'package:smart_scan/resultscan/controllers/result_scan_controllers.dart';

class result_scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<result_scan_controllers>(() => result_scan_controllers());
  }

}