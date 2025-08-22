import 'package:get/get.dart';
import 'package:smart_scan/urlscan/controllers/url_scan_controllers.dart';

class url_scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<url_scan_controllers>(() => url_scan_controllers());
  }

}