import 'dart:async';

import 'package:cafeteria_challenge/core/common/constants/global_constants.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  onInit() async {
    super.onInit();
    //await splashScreenDelayed();
  }

  // Future<void> splashScreenDelayed() async {
  //   await Future.delayed(
  //     const Duration(seconds: GlobalConstants.splashScreenDuration),
  //     () async {
  //        await Get.offAllNamed(
  //               AppRoutes.rootPage,
  //               arguments: LayoutConstants.rootPageSelectCategory,
  //             )
           
  //     },
  //   );
  // }
}
