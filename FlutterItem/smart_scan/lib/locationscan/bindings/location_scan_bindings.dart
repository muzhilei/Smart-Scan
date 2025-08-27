import 'package:get/get.dart';
import 'package:smart_scan/locationscan/controllers/location_scan_controllers.dart';

class location_scan_bindings extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<location_scan_controllers>( () => location_scan_controllers());
  }

}