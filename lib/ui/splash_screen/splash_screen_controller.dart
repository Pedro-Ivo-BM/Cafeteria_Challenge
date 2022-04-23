import 'dart:async';
import 'package:cafeteria_challenge/core/common/constants/global_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/layout_constants.dart';
import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  onInit() async {
    super.onInit();
    await splashTimeDelay();
  }

  Future<void> splashTimeDelay() async {
    await Future.delayed(
      const Duration(seconds: GlobalConstants.splashScreenDuration),
      () async {
        await Get.offAllNamed(
          AppRoutes.root,
          arguments: LayoutConstants.homePagePositionAtRootPages,
        );
      },
    );
  }
}
