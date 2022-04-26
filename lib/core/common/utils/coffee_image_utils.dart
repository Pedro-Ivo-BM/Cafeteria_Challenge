import 'package:cafeteria_challenge/core/common/constants/assets_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/icons_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

abstract class CoffeeImageUtils {
  static Widget obtainCoffeeImageByName(String coffeeName) {
    if (coffeeName == "Expresso") {
      return ImagesConstants.expressoImage;
    } else if (coffeeName == "Cappuccino") {
      return ImagesConstants.cappuccinoImage;
    } else if (coffeeName == "Macchiato") {
      return ImagesConstants.macchiatoImage;
    } else if (coffeeName == "Mocha") {
      return ImagesConstants.mochaImage;
    } else {
      return ImagesConstants.latteImage;
    }
  }

  static Widget obtainSugarImageByAmount(int sugarAmount) {
    if (sugarAmount == 0) {
      return IconsConstants.sugarCubeDisabledIcon;
    } else if (sugarAmount == 1) {
      return IconsConstants.sugarCubeAbledIcon;
    } else if (sugarAmount == 2) {
      return Stack(
        children: [
          Transform.translate(
            offset: const Offset(0, 0),
            child: SvgPicture.asset(AssetsConstants.sugarCubeAbled),
          ),
          Transform.translate(
              offset: const Offset(20, 0),
              child: SvgPicture.asset(AssetsConstants.sugarCubeAbled)),
        ],
      );
    } else {
      return Stack(
        children: [
          SvgPicture.asset(AssetsConstants.sugarCubeAbled),
          Transform.translate(
              offset: const Offset(20, 0),
              child: SvgPicture.asset(AssetsConstants.sugarCubeAbled)),
          Transform.translate(
              offset: const Offset(10, -20),
              child: SvgPicture.asset(AssetsConstants.sugarCubeAbled)),
        ],
      );
    }
  }
}
