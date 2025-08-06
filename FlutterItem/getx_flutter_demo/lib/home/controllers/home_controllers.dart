import 'package:get/get.dart';

class home_controllers extends GetxController{
  var count = 0.obs;
  var currentIndex = 1.obs;


  void increment(){
    count.value++;
    update();
  }

  void onItemTapped(var index){
    currentIndex.value = index;
    print("选中项为 ： ${currentIndex.value}");
    update();
  }

}