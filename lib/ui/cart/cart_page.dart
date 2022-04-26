import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:cafeteria_challenge/core/common/utils/coffee_image_utils.dart';
import 'package:cafeteria_challenge/ui/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends GetView<CartController> {
   
   const CartPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
     final double screenHeight = MediaQuery.of(context).size.height;
    final double incrementAmoutButtonHeightProportioned = screenHeight * 0.045;
    final double incrementAmoutButtonWidthProportioned = screenHeight * 0.06;
    final double appBarHeightProportioned = screenHeight * 0.13;
    final double coffeeImageSizeProportioned = appBarHeightProportioned * 0.3;
       return Scaffold(
           appBar:  PreferredSize(
              preferredSize: Size.fromHeight(appBarHeightProportioned),
              child: AppBar(
                title: Text(
                 'Cart', style: AppTextStyleTheme.pagesTitleDefaultTextStyle,
                ),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    color: ColorsTheme.returtingChevron,
                    size: 35,
                  ),
                  onPressed: Get.back,
                ),
                elevation: 20,
                flexibleSpace: Container(
                  child: Center(
                    child: SizedBox(
                        width: coffeeImageSizeProportioned,
                        height: coffeeImageSizeProportioned,
                        
                   )),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      image: DecorationImage(
                          image: ImagesConstants.appBackgroundImage,
                          fit: BoxFit.cover)),
                ),
                centerTitle: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
           body: Container(),
       );
  }
}