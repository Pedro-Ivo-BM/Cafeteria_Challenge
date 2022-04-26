import 'package:cafeteria_challenge/core/errors/rest_exception.dart';
import 'package:cafeteria_challenge/shared/iservices/i_items_services.dart';
import 'package:cafeteria_challenge/shared/models/items_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController { 
  RxBool isCartListLoadingComplete = false.obs;
  List<ItemsModel> itemsList = <ItemsModel>[].obs;
  RxInt itemListAmount = 0.obs;
  RxDouble itemPrice = 0.0.obs;
  final IItemsServices _iItemsServices;
  CartController(this._iItemsServices,);

  @override
  onInit() async {
    await onGetItemsList();
    super.onInit();
  }  
  
  Future<List<ItemsModel>> onGetItemsList () async{
    try{
      itemsList = await _iItemsServices.getItems();
      isCartListLoadingComplete.toggle();
      return itemsList;
    }on RestException catch (e) {
      throw e.message;
    }
  }

  Future<void> updateItemCart({ required int newAmount, required String itemId}) async{
    try{
      await  _iItemsServices.updateItem(newAmount, itemId); 
    }on RestException catch (e) {
      throw e.message;
    }
  }

  Future<void> deleteItemCart({ required String itemId}) async{
    try{
       await _iItemsServices.deleteItem(itemId); 
    }on RestException catch (e) {
      throw e.message;
    }
  }
}