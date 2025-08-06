import 'package:get/get.dart';
import 'package:smart_scan/homefragment/controllers/home_fragment_controllers.dart';

class home_fragment_bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<home_fragment_controllers>(() => home_fragment_controllers());
  }

}