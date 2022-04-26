import 'package:flutter/material.dart';

abstract class ColorsTheme {
  static const Color defaultCoffeeColor = Color(0xFF2D140D);
  static const Color headerTextsColor = Color(0xFF000000);
  static const Color magnifyingGlassColor = Color(0xFF401414);
  static const Color magnifyingGlassHolderColor = Color(0xFF0101EE);
  static const Color activeButtonColor = Color(0xFFE86130);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color returtingChevron = Color(0xFF8C746A);

  static const MaterialColor appDefaultPaletColor = MaterialColor(
    0xFFCF9775,
    <int, Color>{
      100: Color(0xFFFAF4EE),
      200: Color(0xFFFDE9DA),
      300: Color(0xFFEABFA5),
      400: Color(0xFFCF9775),
      500: Color(0xFFC69A80),
      600: Color(0xFFC28E79),
      700: Color(0xFFB98875),
    },
  );
}
