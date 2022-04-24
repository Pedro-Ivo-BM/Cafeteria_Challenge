import 'package:cafeteria_challenge/core/common/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class ImagesConstants {
  static final Widget coffeeHubLogoImage = SvgPicture.asset(AssetsConstants.coffeeHubLogo);
  static final Widget cappuccinoImage = SvgPicture.asset(AssetsConstants.cappuccino);
  static final Widget expressoImage = SvgPicture.asset(AssetsConstants.expresso);
  static final Widget latteImage = SvgPicture.asset(AssetsConstants.latte);
  static final Widget macchiatoImage = SvgPicture.asset(AssetsConstants.macciato);
  static final Widget mochaImage = SvgPicture.asset(AssetsConstants.mocha);
  static const AssetImage appBackgroundImage = AssetImage(AssetsConstants.appBackground);
  
}