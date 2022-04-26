import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:cafeteria_challenge/core/common/themes/app_text_style_theme.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:cafeteria_challenge/core/common/utils/coffee_image_utils.dart';
import 'package:cafeteria_challenge/ui/cart/cart_controller.dart';
import 'package:cafeteria_challenge/ui/widgets/cart_page_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends GetView<CartController> {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double incrementAmoutButtonHeightProportioned = screenHeight * 0.045;
    final double incrementAmoutButtonWidthProportioned = screenHeight * 0.06;
    final double appBarHeightProportioned = screenHeight * 0.13;
    final double coffeeImageSizeProportioned = appBarHeightProportioned * 0.3;
    return Obx(() => controller.isCartListLoadingComplete.value
        ? Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(appBarHeightProportioned),
              child: AppBar(
                title: Text(
                  'Cart',
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
                  )),
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
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.itemsList.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 5,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CartPageListTileWidget(
                              coffeeName:
                                  controller.itemsList[index].coffeeName,
                              coffeeSize: controller.itemsList[index].size,
                              sugarQuantity: controller.itemsList[index].sugarAmount,
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: 
                              controller.itemsList[index].amount <= 0
                                  ? () { 
                                         //controller.deleteItemCart(itemId: controller.itemsList[index].id);
                                         controller.itemsList.remove(index);
                                  }
                                  : () { 
                                        --controller.itemListAmount.value;
                                         //--controller.itemsList[index].amount;
                                         //controller.itemListAmount.value = controller.itemsList[index].amount;
                                          // await controller.updateItemCart(newAmount: controller.itemsList[index].amount, itemId: controller.itemsList[index].id);
                                          // await controller.onGetItemsList();
                                  },
                           
                              child: Container(
                                child: const Center(
                                  child: Icon(Icons.remove,
                                      color: ColorsTheme.white),
                                ),
                                height: incrementAmoutButtonHeightProportioned,
                                width: incrementAmoutButtonWidthProportioned,
                                decoration: BoxDecoration(
                                    color: ColorsTheme
                                        .appDefaultPaletColor.shade400,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: const Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    )),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  controller.itemListAmount.value.toString(),
                                  //controller.itemsList[index].amount.toString(),
                                  
                                  style: AppTextStyleTheme
                                      .coffeeDetailsPageItemsAmountTextStyle,
                                ),
                              ),
                              height: incrementAmoutButtonHeightProportioned,
                              width: incrementAmoutButtonWidthProportioned,
                            ),
                            GestureDetector(
                              onTap: () { 
                                ++controller.itemListAmount.value;
                                        // ++controller.itemsList[index].amount;
                                         //controller.itemListAmount.value = controller.itemsList[index].amount;
                                        //  controller.updateItemCart(newAmount: controller.itemsList[index].amount, itemId: controller.itemsList[index].id);
                                        //  controller.onGetItemsList();
                                  },
                             
                              
                              child: Container(
                                child: const Center(
                                  child: const Icon(
                                    Icons.add,
                                    color: ColorsTheme.white,
                                  ),
                                ),
                                height: incrementAmoutButtonHeightProportioned,
                                width: incrementAmoutButtonWidthProportioned,
                                decoration: BoxDecoration(
                                    color: ColorsTheme
                                        .appDefaultPaletColor.shade400,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: const Radius.circular(15),
                                    )),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            bottomSheet: Container(
              height: 60,
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
