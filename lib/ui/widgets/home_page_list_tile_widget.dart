import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:cafeteria_challenge/core/common/utils/coffee_image_utils.dart';
import 'package:flutter/material.dart';

class HomePageListTileWidget extends StatelessWidget {
  final String coffeeName;
  const HomePageListTileWidget({Key? key, required this.coffeeName,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double listTileHeightProportioned = screenHeight * 0.115;
    final double listTileImageHeightProportioned =
        listTileHeightProportioned * 0.55;
    final double listTileTextSizeProportioned =
        listTileHeightProportioned * 0.23;
    final double listTileIconSizeProportioned = listTileHeightProportioned*0.35;
    return Container(
      color: Colors.transparent,
      height: listTileHeightProportioned,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          SizedBox(
              width:  listTileImageHeightProportioned,
              height: listTileImageHeightProportioned,
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: 
                  CoffeeImageUtils.obtainCoffeeImageByName(coffeeName),
                  )),
          const SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
                height: listTileTextSizeProportioned,
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      coffeeName,
                      style: AppTextStyleTheme.homePageCoffeesListTextStyle,
                    ))),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            color:
                ColorsTheme.appDefaultPaletColor.shade500.withOpacity(0.82),
            size: listTileIconSizeProportioned,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
