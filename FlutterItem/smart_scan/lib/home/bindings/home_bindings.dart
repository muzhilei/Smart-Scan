import 'package:get/get.dart';
import 'package:smart_scan/home/controllers/home_controllers.dart';

class home_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<home_controllers>(() => home_controllers());
  }

}