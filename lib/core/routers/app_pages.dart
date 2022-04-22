import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/ui/splash_screen/splash_screen_binding.dart';
import 'package:cafeteria_challenge/ui/splash_screen/splash_screen_page.dart';
import 'package:get/get.dart';

abstract class AppPages{
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => SplashScreenPage(),
      binding: SplashScreenBinding(),
    ),
  ];

}