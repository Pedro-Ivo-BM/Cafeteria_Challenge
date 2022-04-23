import 'package:cafeteria_challenge/core/common/constants/global_constants.dart';
import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/ui/cart/cart_page.dart';
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

  Future<void> standByModeCall() async {
    while (true) {
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
    selectedPagePosition = Get.arguments;
    pages.value = <Widget>[
      HomePage(),
      CartPage(),
      ProfileUserPage(),
    ];
    super.onInit();
    standByModeCall();
  }
}
