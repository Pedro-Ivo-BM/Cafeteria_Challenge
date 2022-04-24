import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/ui/cart/cart_binding.dart';
import 'package:cafeteria_challenge/ui/cart/cart_page.dart';
import 'package:cafeteria_challenge/ui/home/home_binding.dart';
import 'package:cafeteria_challenge/ui/home/home_page.dart';
import 'package:cafeteria_challenge/ui/profile_user/profile_user_binding.dart';
import 'package:cafeteria_challenge/ui/profile_user/profile_user_page.dart';
import 'package:cafeteria_challenge/ui/root/root_binding.dart';
import 'package:cafeteria_challenge/ui/root/root_page.dart';
import 'package:cafeteria_challenge/ui/splash_screen/splash_screen_binding.dart';
import 'package:cafeteria_challenge/ui/splash_screen/splash_screen_page.dart';
import 'package:cafeteria_challenge/ui/stand_by_screen/stand_by_screen_binding.dart';
import 'package:cafeteria_challenge/ui/stand_by_screen/stand_by_screen_page.dart';
import 'package:get/get.dart';

abstract class AppPages{
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreenPage(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.standByScreen,
      page: () => const StandByScreenPage(),
      binding: StandByScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.root,
      page: () => const RootPage(),
      binding:RootBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => const CartPage(),
      binding: CartBinding(),
    ),
    GetPage(
      name: AppRoutes.profileUser,
      page: () => const ProfileUserPage(),
      binding: ProfileUserBinding(),
    ),
  ];

}