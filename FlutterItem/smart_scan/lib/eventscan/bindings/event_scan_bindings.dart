import 'package:get/get.dart';
import 'package:smart_scan/eventscan/controllers/event_scan_controllers.dart';

class event_scan_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<event_scan_controllers>(() => event_scan_controllers());
  }

}