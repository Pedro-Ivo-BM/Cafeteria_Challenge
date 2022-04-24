import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:cafeteria_challenge/core/common/utils/coffee_image_utils.dart';
import 'package:cafeteria_challenge/ui/cart/cart_controller.dart';
import 'package:cafeteria_challenge/ui/home/home_controller.dart';
import 'package:cafeteria_challenge/ui/widgets/home_page_list_tile_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.isCoffeeListLoadingComplete.value
        ? Scaffold(
            backgroundColor: ColorsTheme.appDefaultPaletColor.shade100,
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                      color: ColorsTheme.black,
                    ))
              ],
              elevation: 0,
              backgroundColor: ColorsTheme.appDefaultPaletColor.shade100,
            ),
            body: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'It`s Great ',
                              style: AppTextStyleTheme.homePageTitleDefaultTextStyle,
                            ),
                            Text(
                              'Day for',
                              style: AppTextStyleTheme.homePageTitleColoredTextStyle,
                            )
                          ],
                        ),
                        Text(
                          'Coffee.',
                          style: AppTextStyleTheme.homePageTitleColoredTextStyle,
                        ),
                      ],
                    ),
                  ),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.coffeeList.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 5,
                      );
                    },
                    itemBuilder: (context, index) {
                      return //Text('socorro');
                          GestureDetector(
                            onTap: ()=> controller.goToDetailsPage(controller.coffeeList[index]),
                            child: HomePageListTileWidget(
                                coffeeName: controller.coffeeList[index].name, ),
                          );
                    },
                  ),
                ],
              ),
            ),
          )
        : Center(
            child: CircularProgressIndicator(
              strokeWidth: MediaQuery.of(context).size.width * 0.01,
              color: ColorsTheme.black,
            ),
          ));
  }
}
