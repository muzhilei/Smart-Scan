import 'package:get/get.dart';
import 'package:smart_scan/scanqr/controllers/scanqr_controllers.dart';

class scanqr_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<scanqr_controllers>(() => scanqr_controllers());
  }

}