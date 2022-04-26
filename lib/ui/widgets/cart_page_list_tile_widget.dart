import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/utils/coffee_image_utils.dart';
import 'package:flutter/material.dart';

class CartPageListTileWidget extends StatelessWidget {
  final String coffeeName;
  final String coffeeSize;
  final int sugarQuantity;
  const CartPageListTileWidget({
    Key? key,
    required this.coffeeName,
    required this.coffeeSize,
    required this.sugarQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double listTileWidthProportioned = screenWidth * 0.45;
    final double listTileHeightProportioned = screenHeight * 0.14;
    
    return Container(
        height: listTileHeightProportioned,
        width: listTileWidthProportioned,
        color: Colors.transparent,
        child: Row(
          children: [
            CoffeeImageUtils.obtainCoffeeImageByName(coffeeName),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeName,
                  style: AppTextStyleTheme.cartPageItemNameTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(coffeeSize),
                    const Text(' Size'),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                CoffeeImageUtils.obtainSugarImageByAmount(sugarQuantity),
                const Spacer(
                  flex: 1,
                ),
              ],
            )
          ],
        ));
  }
}
