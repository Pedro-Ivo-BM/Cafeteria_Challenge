import 'package:cafeteria_challenge/ui/splash_screen/splash_screen_controller.dart';
import 'package:cafeteria_challenge/ui/widgets/splash_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenWidget(),
    );
  }
}
