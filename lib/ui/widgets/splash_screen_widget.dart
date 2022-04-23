import 'package:cafeteria_challenge/core/common/constants/assets_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/layout_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double logoSizeProportioned =
        screenWidth * LayoutConstants.splashScreenWidgetLogoSizeProportion;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ImagesConstants.appBackgroundImage,
          fit: BoxFit.cover,
        ),
      ),
      height: screenHeight,
      width: screenWidth,
      child: Center(
        child: SizedBox(
          width: logoSizeProportioned,
          height: logoSizeProportioned,
          child: FittedBox(
            fit: BoxFit.cover,
            child: SvgPicture.asset(
              AssetsConstants.coffeeHubLogo,
            ),
          ),
        ),
      ),
    );
  }
}
