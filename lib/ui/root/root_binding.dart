import 'package:cafeteria_challenge/ui/cart/cart_controller.dart';
import 'package:cafeteria_challenge/ui/home/home_controller.dart';
import 'package:cafeteria_challenge/ui/profile_user/profile_user_controller.dart';
import 'package:cafeteria_challenge/ui/root/root_controller.dart';
import 'package:get/get.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RootController());
    Get.put(HomeController());
    Get.put(CartController());
    Get.put(ProfileUserController());
  }
}
