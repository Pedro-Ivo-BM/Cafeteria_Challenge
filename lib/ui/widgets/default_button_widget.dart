import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class DefaultButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final Color color = ColorsTheme.appDefaultPaletColor.shade500;
  final String content;
  DefaultButtonWidget({ Key? key, required this.onPressed, required this.content }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Center(child: Text(content, style: AppTextStyleTheme.buttonDefaultTextStyle,),),
      style: ElevatedButton.styleFrom(
        primary: color,
        elevation: 20,
        shadowColor: color,
        minimumSize: Size(MediaQuery.of(context).size.width*0.65, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        )
      ),
    );
  }
}