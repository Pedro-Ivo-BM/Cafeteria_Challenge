import 'package:cafeteria_challenge/core/common/constants/global_constants.dart';
import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/shared/models/coffee_model.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController { 
  final CoffeeModel selectedCoffee = Get.arguments;
  RxBool isScreenTapped = false.obs;
  RxBool isScreenClosed = false.obs;
  RxInt selectedCoffeeSizePosition = 0.obs;
  RxInt selectedSugarQuantity = 0.obs;
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
    //standByModeCall();
  }

  @override
  void onClose() {
    isScreenClosed.value = true;
  }
}