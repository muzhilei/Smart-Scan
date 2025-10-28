import 'package:get/get.dart';
import 'package:smart_scan/about/controllers/about_controllers.dart';

class about_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<about_controllers>(()=> about_controllers());
  }

}