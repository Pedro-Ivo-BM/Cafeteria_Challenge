import 'package:cafeteria_challenge/shared/iservices/i_coffee_services.dart';
import 'package:cafeteria_challenge/shared/services/coffee_services.dart';
import 'package:cafeteria_challenge/ui/home/home_controller.dart';
import 'package:cafeteria_challenge/ui/profile_user/profile_user_controller.dart';
import 'package:cafeteria_challenge/ui/root/root_controller.dart';
import 'package:get/get.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ICoffeeServices>(() => CoffeeServices());
    Get.put(RootController());
    Get.put(HomeController(Get.find()));
    Get.put(ProfileUserController());
  }
}
