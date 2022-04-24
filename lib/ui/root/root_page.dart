import 'package:cafeteria_challenge/core/common/constants/assets_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/icons_constants.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:cafeteria_challenge/ui/root/root_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPage extends GetView<RootController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double bottomNavigationBarHeightProportioned = screenHeight * 0.11;
    return Obx(() => GestureDetector(
          onTap: () => controller.isScreenTapped.value = true,
          child: Scaffold(
            backgroundColor: ColorsTheme.appDefaultPaletColor.shade100,
            body: SafeArea(
              child:
                  controller.pages.elementAt(controller.selectedPagePosition),
            ),
            bottomNavigationBar: Obx(
              () => Container(
                height: bottomNavigationBarHeightProportioned,
                decoration:  BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: ColorsTheme.appDefaultPaletColor.shade200,
                        spreadRadius: 3,
                        blurRadius: 88,
                        offset: Offset(0,-10),

                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33),
                    ),
                    color: ColorsTheme.white),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedItemColor: ColorsTheme.appDefaultPaletColor.shade400,
                  backgroundColor: Colors.transparent,
                  currentIndex: controller.selectedPagePosition,
                  onTap: (index) {
                    controller.selectedPagePosition = index;
                    controller.isScreenTapped.value = true;
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetsConstants.homeLogo,
                        color: ColorsTheme.appDefaultPaletColor.shade400
                            .withOpacity(0.3),
                      ),
                      label: "",
                      activeIcon: SvgPicture.asset(
                        AssetsConstants.homeLogo,
                        color: ColorsTheme.appDefaultPaletColor.shade400,
                      ),
                    ),
                     BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetsConstants.coffeeCartLogo,
                        color: ColorsTheme.appDefaultPaletColor.shade700,
                        height: 30,
                      ),
                      label: "",
                      activeIcon: SvgPicture.asset(
                        AssetsConstants.coffeeCartLogo,
                        color: ColorsTheme.appDefaultPaletColor.shade700,
                        height: 30,
                            
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetsConstants.profileLogo,
                        color: ColorsTheme.activeButtonColor
                            .withOpacity(0.4),
                        height: 30,
                      ),
                      label: "",
                      activeIcon:SvgPicture.asset(
                        AssetsConstants.profileLogo,
                        color: ColorsTheme.activeButtonColor,
                        height: 30,
                            
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
