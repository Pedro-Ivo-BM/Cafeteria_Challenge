import 'package:cafeteria_challenge/ui/root/root_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RootPage extends GetView<RootController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: () => controller.isScreenTapped.value = true,
          child: Scaffold(
            body: SafeArea(
              child:
                  controller.pages.elementAt(controller.selectedPagePosition),
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
                onTap: (index) {
                  controller.selectedPagePosition = index;
                  controller.isScreenTapped.value = true;
                },
                items: [
                  BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.home,
                      size: 36,
                    ),
                    label: "",
                    activeIcon: Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Icon(
                          Icons.home,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  const BottomNavigationBarItem(
                    icon: const Icon(Icons.car_rental),
                    label: "",
                    activeIcon: const Icon(Icons.car_rental),
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.person_outline,
                      size: 36,
                    ),
                    label: "",
                    activeIcon: Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Icon(
                          Icons.person_outline,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
