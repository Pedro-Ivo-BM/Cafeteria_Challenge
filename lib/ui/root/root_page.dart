import 'package:cafeteria_challenge/ui/root/root_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:cafeteria_challenge/core/common/constants/layout_constants.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';


class RootPage extends GetView<RootController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: SafeArea(
            child: controller.pages.elementAt(controller.selectedPagePosition),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.green,
              backgroundColor: Colors.blue,
              currentIndex: controller.selectedPagePosition,
              onTap: (index) => controller.selectedPagePosition = index,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.home,
                    size: 36,
                  ),
                  label: "",
                  activeIcon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.home,
                        size: 36,
                      ),
                      // Positioned(
                      //   top: LayoutConstants.rootPageTopPositionedBorderActive,
                      //   right:
                      //       LayoutConstants.rootPageRightPositionedBorderActive,
                      //   child: Container(
                      //     width: LayoutConstants
                      //         .rootPageWidthContainerBorderActiveBottomNavigationBarItem,
                      //     color: ColorsTheme.rede.shade700,
                      //     height: LayoutConstants
                      //         .rootPageHeightContainerBorderActiveBottomNavigationBarItem,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const BottomNavigationBarItem(
                  icon: const Icon(Icons.car_rental),
                  // SvgPicture.asset(
                  //   'assets/images/trophy_outlined.svg',
                  //   width: LayoutConstants.rootPageWidthSvgTrophyOutlined,
                  //   height: LayoutConstants.rootPageHeightSvgTrophyOutlined,
                  //   color: ColorsTheme.rede.shade300,
                  // ),
                  label: "",
                  activeIcon: const Icon(Icons.car_rental),
                  // Stack(
                  //   clipBehavior: Clip.none,
                  //   children: [
                  //     SvgPicture.asset(
                  //       'assets/images/trophy_outlined.svg',
                  //       width: LayoutConstants.rootPageWidthSvgTrophyOutlined,
                  //       height: LayoutConstants.rootPageHeightSvgTrophyOutlined,
                  //       color: ColorsTheme.rede.shade700,
                  //     ),
                  //     Positioned(
                  //       top: LayoutConstants.rootPageTopPositionedBorderActive,
                  //       right:
                  //           LayoutConstants.rootPageRightPositionedBorderActive,
                  //       child: Container(
                  //         width: LayoutConstants
                  //             .rootPageWidthContainerBorderActiveBottomNavigationBarItem,
                  //         color: ColorsTheme.rede.shade700,
                  //         height: LayoutConstants
                  //             .rootPageHeightContainerBorderActiveBottomNavigationBarItem,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.person_outline,
                    size: 36,
                  ),
                  label: "",
                  activeIcon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.person_outline,
                        size: 36,
                      ),
                      // Positioned(
                      //   top: LayoutConstants
                      //       .rootPageTopPositionedLastBorderActive,
                      //   right:
                      //       LayoutConstants.rootPageRightPositionedBorderActive,
                      //   child: Container(
                      //     width: LayoutConstants
                      //         .rootPageWidthContainerBorderActiveBottomNavigationBarItem,
                      //     color: ColorsTheme.rede.shade700,
                      //     height: LayoutConstants
                      //         .rootPageHeightContainerBorderActiveBottomNavigationBarItem,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
              
            ),
          ),
        ));
  }
}
