import 'package:cafeteria_challenge/core/common/constants/global_constants.dart';
import 'package:cafeteria_challenge/core/errors/rest_exception.dart';
import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/shared/iservices/i_items_services.dart';
import 'package:cafeteria_challenge/shared/models/coffee_model.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController { 
  final CoffeeModel selectedCoffee = Get.arguments;
  RxBool isScreenTapped = false.obs;
  RxBool isScreenClosed = false.obs;
  RxInt amountOfCoffee = 0.obs;
  RxDouble selectedSizeCoffeePrice = 0.0.obs;
  RxDouble itemUnityPrice = 0.0.obs;
  RxDouble itemPrice = 0.0.obs;
  RxInt selectedCoffeeSizePosition = 0.obs;
  RxInt selectedSugarQuantity = 0.obs;
  final IItemsServices _iItemsServices;

DetailsController(this._iItemsServices,);

 void goToCartPage(){
    Get.toNamed(AppRoutes.cart);
  }

  Future<void> createItemToCart({required String size, required int amount, required int sugarAmount, required double unityPrice, required String coffeeName}) async{
    try{
      _iItemsServices.addItem(size , amount, sugarAmount, unityPrice, coffeeName); 
    }on RestException catch (e) {
      throw e.message;
    }
  }

  Future<void> standByModeCall() async {
    while (!isScreenClosed.value) {
      await Future.delayed(
        const Duration(seconds: GlobalConstants.standByModeTimeInSeconds),
        () async {
          if (!isScreenTapped.value) {
            await Get.toNamed(
              AppRoutes.standByScreen,
            );
          }
          isScreenTapped.value = false;
        },
      );
    }
  }

  @override
  void onInit() {
    isScreenClosed.value = false;
    super.onInit();
  }

  @override
  void onClose() {
    isScreenClosed.value = true;
  }
}