import 'package:cafeteria_challenge/core/common/constants/assets_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/icons_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/app_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:cafeteria_challenge/core/common/utils/coffee_image_utils.dart';
import 'package:cafeteria_challenge/ui/details/details_controller.dart';
import 'package:cafeteria_challenge/ui/widgets/details_page_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeightProportioned = screenHeight * 0.35;
    final double coffeeImageSizeProportioned = appBarHeightProportioned * 0.3;
    return GestureDetector(
        onTap: () => controller.isScreenTapped.value = true,
        child: Obx(
          () => Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(appBarHeightProportioned),
              child: AppBar(
                title: Text(
                  controller.selectedCoffee.name,
                  style: AppTextStyleTheme.pagesTitleDefaultTextStyle,
                ),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    color: ColorsTheme.returtingChevron,
                    size: 35,
                  ),
                  onPressed: Get.back,
                ),
                elevation: 20,
                flexibleSpace: Container(
                  child: Center(
                    child: SizedBox(
                        width: coffeeImageSizeProportioned,
                        height: coffeeImageSizeProportioned,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: CoffeeImageUtils.obtainCoffeeImageByName(
                              controller.selectedCoffee.name),
                        )),
                  ),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      image: DecorationImage(
                          image: ImagesConstants.appBackgroundImage,
                          fit: BoxFit.cover)),
                ),
                centerTitle: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      controller.selectedCoffee.name,
                    ),
                    Spacer(),
                    Container(
                      height: 10,
                      width: 10,
                      color:ColorsTheme.appDefaultPaletColor.shade400),
                    Container(),
                    Container(
                      height: 10,
                      width: 10,
                      color:ColorsTheme.appDefaultPaletColor.shade400,),
                  ],
                ),
                ////////////////////////////////////////////// price
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Price',
                  style: AppTextStyleTheme.coffeeDetailsPageItemsPriceTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
//////////////////////////////////////////////////////////// coffe size
                Text(
                  'Size',
                  style: AppTextStyleTheme.coffeeDetailsPageItemsTextStyle,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: BottomNavigationBar(
                      type: BottomNavigationBarType.shifting,
                      enableFeedback: false,
                      elevation: 0,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      selectedItemColor:
                          ColorsTheme.appDefaultPaletColor.shade400,
                      backgroundColor: Colors.transparent,
                      currentIndex: controller.selectedCoffeeSizePosition.value,
                      onTap: (index) {
                        controller.selectedCoffeeSizePosition.value = index;
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            AssetsConstants.cupSizeDisabled,
                            width: 42,
                            height: 42,
                          ),
                          label: "",
                          activeIcon: SvgPicture.asset(
                            AssetsConstants.cupSizeAbled,
                            width: 42,
                            height: 42,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: Transform.translate(
                            offset: Offset(-5, 0),
                            child: SvgPicture.asset(
                              AssetsConstants.cupSizeDisabled,
                              width: 52,
                              height: 52,
                            ),
                          ),
                          label: "",
                          activeIcon: Transform.translate(
                            offset: Offset(-5, 0),
                            child: SvgPicture.asset(
                              AssetsConstants.cupSizeAbled,
                              width: 52,
                              height: 52,
                            ),
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            AssetsConstants.cupSizeDisabled,
                            width: 64,
                            height: 64,
                          ),
                          label: "",
                          activeIcon: SvgPicture.asset(
                            AssetsConstants.cupSizeAbled,
                            width: 64,
                            height: 64,
                          ),
                        ),
                      ]),
                ),
                ///////////////////////////////////////////////////////////////////////////////////////// sugar
                Row(
                  children: [
                    Text(
                      'Sugar',
                      style: AppTextStyleTheme.coffeeDetailsPageItemsTextStyle,
                    ),
                    Text(' (In Cubes)',
                        style: AppTextStyleTheme
                            .coffeeDetailsPageItemsWithOpacityTextStyle)
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: BottomNavigationBar(
                      type: BottomNavigationBarType.shifting,
                      elevation: 0,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      //selectedItemColor: ColorsTheme.appDefaultPaletColor.shade400,
                      backgroundColor: Colors.transparent,
                      currentIndex: controller.selectedSugarQuantity.value,
                      onTap: (index) {
                        controller.selectedSugarQuantity.value = index;
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: Stack(
                            children: [
                              SvgPicture.asset(
                                  AssetsConstants.sugarCubeDisabled),
                              SvgPicture.asset(
                                AssetsConstants.sugarCubeTransversalCut,
                                width: 19,
                                height: 19,
                              ),
                            ],
                          ),
                          label: "",
                          activeIcon: Stack(
                            children: [
                              SvgPicture.asset(AssetsConstants.sugarCubeAbled),
                              SvgPicture.asset(
                                AssetsConstants.sugarCubeTransversalCut,
                                color: ColorsTheme.defaultCoffeeColor,
                                width: 19,
                                height: 19,
                              ),
                            ],
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: Stack(
                            children: [
                              Transform.translate(
                                  offset: Offset(-5, 0),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeDisabled)),
                            ],
                          ),
                          label: "",
                          activeIcon: Stack(
                            children: [
                              Transform.translate(
                                  offset: Offset(-5, 0),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeAbled)),
                            ],
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: Stack(
                            children: [
                              Transform.translate(
                                offset: Offset(-11, 0),
                                child: SvgPicture.asset(
                                    AssetsConstants.sugarCubeDisabled),
                              ),
                              Transform.translate(
                                  offset: Offset(9, 0),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeDisabled)),
                            ],
                          ),
                          label: "",
                          activeIcon: Stack(
                            children: [
                              Transform.translate(
                                offset: Offset(-11, 0),
                                child: SvgPicture.asset(
                                    AssetsConstants.sugarCubeAbled),
                              ),
                              Transform.translate(
                                  offset: Offset(9, 0),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeAbled)),
                            ],
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: Stack(
                            children: [
                              SvgPicture.asset(
                                  AssetsConstants.sugarCubeDisabled),
                              Transform.translate(
                                  offset: Offset(20, 0),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeDisabled)),
                              Transform.translate(
                                  offset: Offset(10, -20),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeDisabled)),
                            ],
                          ),
                          label: "",
                          activeIcon: Stack(
                            children: [
                              SvgPicture.asset(AssetsConstants.sugarCubeAbled),
                              Transform.translate(
                                  offset: Offset(20, 0),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeAbled)),
                              Transform.translate(
                                  offset: Offset(10, -20),
                                  child: SvgPicture.asset(
                                      AssetsConstants.sugarCubeAbled)),
                            ],
                          ),
                        ),
                      ]),
                ),
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                // Text('CoffeeSelected'),
                // Text('SugarCubes'),
                // Row(children: [],)
              ],
            ),
          ),
        ));
  }
}
