import 'package:flutter/material.dart';
import 'colors_theme.dart';

abstract class AppStyleTheme {
  static AppBarTheme getAppBarTheme() {
    return AppBarTheme(
      elevation: 0,
      centerTitle: false,
      //color: ColorsTheme.rede.shade600,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

 
  }

