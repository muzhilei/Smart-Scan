import 'package:get/get.dart';
import 'package:smart_scan/wifiscan/controllers/wifi_scan_controllers.dart';

class wifi_scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<wifi_scan_controllers>( () => wifi_scan_controllers());
  }

}