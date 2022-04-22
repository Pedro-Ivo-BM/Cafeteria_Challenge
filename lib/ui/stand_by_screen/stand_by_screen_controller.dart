import 'dart:async';
import 'package:get/get.dart';


class StandByScreenController extends GetxController {
  

  @override
  onInit() async {
    super.onInit();
    //await splashScreenDelayed();
  }

  

  // Future<void> splashScreenDelayed() async {
  //   await Future.delayed(
  //     Duration(seconds: GlobalConstant),
  //     () async {
  //       await Get.offAllNamed(
  //               AppRoutes.rootPage,
  //               arguments: LayoutConstants.rootPageSelectCategory,
  //             )
  //          ;
  //     },
  //   );
  // }
}
