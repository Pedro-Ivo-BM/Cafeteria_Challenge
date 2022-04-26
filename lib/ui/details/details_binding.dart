import 'package:cafeteria_challenge/shared/iservices/i_items_services.dart';
import 'package:cafeteria_challenge/shared/services/items_services.dart';
import 'package:cafeteria_challenge/ui/details/details_controller.dart';
import 'package:get/get.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IItemsServices>(() => ItemsServices());
    Get.put(DetailsController(Get.find()));
  }
}