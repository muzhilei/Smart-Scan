import 'package:get/get.dart';
import 'package:smart_scan/emailscan/controllers/email_scan_controllers.dart';

class email_scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<email_scan_controllers>(() => email_scan_controllers());
  }

}