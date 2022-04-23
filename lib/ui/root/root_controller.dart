import 'package:cafeteria_challenge/ui/cart/cart_page.dart';
import 'package:cafeteria_challenge/ui/home/home_page.dart';
import 'package:cafeteria_challenge/ui/profile_user/profile_user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  final  RxInt _selectedPagePosition = 0.obs;
  get selectedPagePosition => _selectedPagePosition.value;
  set selectedPagePosition(pagePosition) => _selectedPagePosition.value = pagePosition;

  final  RxList<Widget> _pages = <Widget>[].obs;
  get pages => _pages;
  set pages(pagesList) => _pages.value = pagesList;

  void changeTabIndex(int index) => selectedPagePosition = index;

  @override
  void onInit() {
    changeTabIndex(Get.arguments);
    pages.value = <Widget>[
      HomePage(),
      CartPage(),
      ProfileUserPage(),
    ];
    super.onInit();
  }
}
