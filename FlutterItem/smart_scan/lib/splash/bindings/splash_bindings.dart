import 'package:get/get.dart';
import 'package:smart_scan/splash/controllers/splash_controllers.dart';

class splash_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<splash_controllers>(() => splash_controllers());
  }

}