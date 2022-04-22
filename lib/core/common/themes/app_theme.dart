import 'package:flutter/material.dart';
import 'app_style_theme.dart';


abstract class AppTheme {
  static ThemeData get tema1 {
    return ThemeData(
      //primaryColor: ColorsTheme.rede.shade700,
      //scaffoldBackgroundColor: ColorsTheme.neutral.shade100,
      appBarTheme: AppStyleTheme.getAppBarTheme(),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        ),
        //buttonColor: ColorsTheme.rede.shade500,
      ),
    );
  }
}
