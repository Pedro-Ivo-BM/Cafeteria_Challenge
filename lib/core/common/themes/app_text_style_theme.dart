import 'package:flutter/cupertino.dart';
import 'colors_theme.dart';

abstract class AppTextStyleTheme {
  static const double thirtySixSize = 36.0;
  static const double thirtySize = 30.0;
  static const double twentyThreeSize = 23.0;
  static const double twentySize = 20.0;
  static const double eighteenSize = 18.0;
  static const double twelveSize = 12.0;

  static const FontWeight fontRegular = FontWeight.w400;
  static const FontWeight fontBold = FontWeight.w700;
  static const FontWeight fontExtraBold = FontWeight.w800;

  static const String fontFamily = 'Sen';

  static const TextStyle pagesTitleDefaultTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentyThreeSize,
    fontWeight: fontBold,
    color: ColorsTheme.black,
  );

  static const TextStyle homePageTitleDefaultTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: thirtySixSize,
    fontWeight: fontRegular,
    color: ColorsTheme.black,
  );
  static final TextStyle homePageTitleColoredTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: thirtySixSize,
    fontWeight: fontBold,
    color: ColorsTheme.appDefaultPaletColor.shade700,
  );

  static const TextStyle homePageCoffeesListTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentySize,
    fontWeight: fontBold,
    color: ColorsTheme.defaultCoffeeColor,
  );

  static const TextStyle coffeeDetailsPageItemsTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentySize,
    fontWeight: fontRegular,
    color: ColorsTheme.black,
  );

  static final TextStyle coffeeDetailsPageItemsWithOpacityTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentySize,
    fontWeight: fontRegular,
    color: ColorsTheme.black.withOpacity(0.2),
  );

  static const TextStyle coffeeDetailsPageItemsAmountTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: eighteenSize,
    fontWeight: fontRegular,
    color: ColorsTheme.defaultCoffeeColor,
  );

  static final TextStyle coffeeDetailsPageItemsPriceTextStyle = TextStyle(
      fontFamily: fontFamily,
      fontSize: thirtySize,
      fontWeight: fontBold,
      color: ColorsTheme.appDefaultPaletColor.shade400);

  static const TextStyle buttonDefaultTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: eighteenSize,
    fontWeight: fontRegular,
    color: ColorsTheme.white,
  );

  static const TextStyle cartPageItemNameTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentySize,
    fontWeight: fontRegular,
    color: ColorsTheme.defaultCoffeeColor,
  );

  static final TextStyle cartPageItemSizeLetterTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twentySize,
    fontWeight: fontRegular,
    color: ColorsTheme.appDefaultPaletColor.shade400,
  );

  static const TextStyle cartPageItemSizeTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: twelveSize,
    fontWeight: fontRegular,
    color: ColorsTheme.defaultCoffeeColor,
  );

  static final TextStyle cartPagePageItemsPriceTextStyle = TextStyle(
      fontFamily: fontFamily,
      fontSize: thirtySize,
      fontWeight: fontBold,
      color: ColorsTheme.appDefaultPaletColor.shade400);

  static const TextStyle cartPagePageTotalPriceTextStyle = TextStyle(
      fontFamily: fontFamily,
      fontSize: thirtySize,
      fontWeight: fontBold,
      color: ColorsTheme.black);

  static const TextStyle defaultPopUpTextStyle = TextStyle(
      fontFamily: fontFamily,
      fontSize: twentySize,
      fontWeight: fontRegular,
      color: ColorsTheme.black);
}

