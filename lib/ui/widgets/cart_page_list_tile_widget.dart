import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/utils/coffee_image_utils.dart';
import 'package:flutter/material.dart';

class CartPageListTileWidget extends StatelessWidget {
  final String coffeeName;
  final String coffeeSize;
  final int sugarQuantity;
  const CartPageListTileWidget({Key? key, required this.coffeeName, required this.coffeeSize, required this.sugarQuantity,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double listTileWidthProportioned = screenWidth * 0.4;
    final double listTileHeightProportioned = screenHeight * 0.135;
    final double listTileImageHeightProportioned =
        listTileHeightProportioned * 0.55;
    final double listTileTextSizeProportioned =
        listTileHeightProportioned * 0.23;
    final double listTileIconSizeProportioned = listTileHeightProportioned*0.35;
    return Container(
      height: listTileHeightProportioned,
      width: listTileWidthProportioned,
      color: Colors.transparent,
      child: Row(children: [
        CoffeeImageUtils.obtainCoffeeImageByName(coffeeName),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(coffeeName, style: AppTextStyleTheme.cartPageItemNameTextStyle,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text(coffeeSize),
              Text('Size'),
            ],),
            Spacer(flex: 6,),
            CoffeeImageUtils.obtainSugarImageByAmount(sugarQuantity),
            Spacer(flex: 1,),
        ],)
      ],)
     
      
    );
  }
}
