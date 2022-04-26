import 'package:cafeteria_challenge/shared/iservices/i_items_services.dart';
import 'package:cafeteria_challenge/shared/services/items_services.dart';
import 'package:cafeteria_challenge/ui/cart/cart_controller.dart';
import 'package:get/get.dart';

class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IItemsServices>(() => ItemsServices());
    Get.put(CartController(Get.find()));
  }
}