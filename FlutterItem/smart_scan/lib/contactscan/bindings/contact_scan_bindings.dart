import 'package:get/get.dart';
import 'package:smart_scan/contactscan/controllers/contact_scan_controllers.dart';

class contact_scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<contact_scan_controllers>(() => contact_scan_controllers());
  }

}