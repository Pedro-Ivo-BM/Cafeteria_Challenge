import 'package:cafeteria_challenge/core/common/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class IconsConstants {
  static final Widget sugarCubeAbledIcon = SvgPicture.asset(AssetsConstants.sugarCubeAbled);
  static final Widget sugarCubeDisabledIcon = SvgPicture.asset(AssetsConstants.sugarCubeDisabled);
  static final Widget sugarCubeTransversalIcon = SvgPicture.asset(AssetsConstants.sugarCubeTransversalCut);
  static final Widget cupSizeAbledIcon = SvgPicture.asset(AssetsConstants.cupSizeAbled);
  static final Widget cupSizeDisabledIcon = SvgPicture.asset(AssetsConstants.cupSizeDisabled);
  static final Widget cartLogoIcon = SvgPicture.asset(AssetsConstants.cartLogo);
  static final Widget cancelLogoIcon = SvgPicture.asset(AssetsConstants.cancelLogo);
  static final Widget homeLogoIcon = SvgPicture.asset(AssetsConstants.homeLogo);
  static final Widget coffeeCartLogoIcon = SvgPicture.asset(AssetsConstants.coffeeCartLogo);
  static final Widget profileLogoIcon = SvgPicture.asset(AssetsConstants.profileLogo);
  
}