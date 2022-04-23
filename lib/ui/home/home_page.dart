import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:cafeteria_challenge/ui/cart/cart_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<CartController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/cappuccino.svg',
                ),
                SvgPicture.asset(
                  'assets/images/expresso.svg',
                ),
                SvgPicture.asset(
                  'assets/images/latte.svg',
                ),
                SvgPicture.asset(
                  'assets/images/macciato.svg',
                ),
                SvgPicture.asset(
                  'assets/images/mocha.svg',
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/home_logo.svg',
                ),
                SvgPicture.asset(
                  'assets/images/coffee_cart_logo.svg',
                ),
                SvgPicture.asset(
                  'assets/images/profile_logo.svg',
                ),
                SvgPicture.asset(
                  'assets/images/sugar_cube_abled.svg',
                ),
                SvgPicture.asset(
                  'assets/images/sugar_cube_disabled.svg',
                ),
                SvgPicture.asset(
                  'assets/images/sugar_cube_transversal_cut.svg',
                ),
                SvgPicture.asset(
                  'assets/images/cart_logo.svg',
                  color: Colors.black,
                ),
                SvgPicture.asset(
                  'assets/images/cancel_logo.svg',
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
