import 'package:get/get.dart';
import 'package:smart_scan/messagescan/controllers/message_scan_controllers.dart';

class message_scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<message_scan_controllers>(() => message_scan_controllers());
  }

}