import 'package:cafeteria_challenge/ui/cart/cart_page.dart';
import 'package:cafeteria_challenge/ui/home/home_page.dart';
import 'package:cafeteria_challenge/ui/profile_user/profile_user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  final _selectedIndex = 0.obs;
  final _bodyContent = <Widget>[].obs;
  get selectedIndex => _selectedIndex.value;
  set selectedIndex(index) => _selectedIndex.value = index;

  get bodyContent => _bodyContent;
  set bodyContent(value) => _bodyContent.value = value;

  void changeTabIndex(int index) => selectedIndex = index;

  @override
  void onInit() {
    changeTabIndex(Get.arguments);
    bodyContent.value = <Widget>[
      HomePage(),
      CartPage(),
      ProfileUserPage(),
    ];
    super.onInit();
  }
}
