import 'package:cafeteria_challenge/core/common/constants/texts_constants.dart';
import 'package:cafeteria_challenge/core/routers/app_pages.dart';
import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/ui/splash_screen/splash_screen_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      initialBinding: SplashScreenBinding(),
      getPages: AppPages.pages,
      title: TextsConstants.cafeteria,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}