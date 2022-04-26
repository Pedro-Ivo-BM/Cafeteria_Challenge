import 'package:cafeteria_challenge/core/common/constants/global_constants.dart';
import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/ui/home/home_page.dart';
import 'package:cafeteria_challenge/ui/profile_user/profile_user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  final RxInt _selectedPagePosition = 0.obs;
  get selectedPagePosition => _selectedPagePosition.value;
  set selectedPagePosition(pagePosition) =>
      _selectedPagePosition.value = pagePosition;

  final RxList<Widget> _pages = <Widget>[].obs;
  get pages => _pages;
  set pages(pagesList) => _pages.value = pagesList;

  RxBool isScreenTapped = false.obs;
  RxBool isScreenClosed = false.obs;

  void goToCartPage(){
    Get.toNamed(AppRoutes.cart);
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
    selectedPagePosition = Get.arguments;
    pages.value = <Widget>[
      const HomePage(),
      const SizedBox(),
      const ProfileUserPage(),
    ];
    super.onInit();
    standByModeCall();
  }

  @override
  void onClose() {
    isScreenClosed.value = true;
  }


}
