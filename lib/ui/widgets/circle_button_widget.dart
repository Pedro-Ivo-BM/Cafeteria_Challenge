import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final Color color;
  final Widget icon;
  CircleButtonWidget({ Key? key, required this.onPressed, required this.icon, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Center(child: icon),
      style: ElevatedButton.styleFrom(
        primary: color,
        elevation: 20,
        shadowColor: color,
        minimumSize: Size(50, 50),
        shape: CircleBorder()
      ),
    );
  }
}