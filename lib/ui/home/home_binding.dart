import 'package:cafeteria_challenge/shared/iservices/i_coffee_services.dart';
import 'package:cafeteria_challenge/shared/services/coffee_services.dart';
import 'package:cafeteria_challenge/ui/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(Get.find()));
  }
}