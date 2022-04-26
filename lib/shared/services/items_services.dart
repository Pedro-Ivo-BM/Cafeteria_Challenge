import 'package:cafeteria_challenge/client/rest_client.dart';
import 'package:cafeteria_challenge/core/errors/rest_exception.dart';
import 'package:cafeteria_challenge/shared/iservices/i_items_services.dart';
import 'package:cafeteria_challenge/shared/models/items_model.dart';
import 'package:dio/dio.dart';

class ItemsServices implements IItemsServices {
  @override
  Future<List<ItemsModel>> getItems() async {
    try {
      final response = await restClient.dio.get('/orders/1/items');
      final List<ItemsModel> itemsList = response.data
          .map<ItemsModel>((cart) => ItemsModel.fromMap(cart))
          .toList();
      return itemsList;
    } on DioError catch (e) {
      throw RestException(message: e.toString());
    }
  }

  @override
  Future addItem(int size, int amount, int sugarAmount ,double unityPrice) async {
    try {
      var body ={
	      "size": size,
	      "amount": amount,
	      "sugarAmount": sugarAmount,
        "unityPrice" : unityPrice,
      };
      await restClient.dio.post('/orders/1/items', data: body);
    } on DioError catch (e) {
      throw RestException(message: e.toString());
    }
  }

  @override
  Future updateItem(int newAmount, String itemId) async{
    try {
      var body ={
	      "amount": newAmount,
      };
      await restClient.dio.patch('/orders/1/items/$itemId', data: body);
    } on DioError catch (e) {
      throw RestException(message: e.toString());
    }
  }

  @override
  Future deleteItem(String itemId) async{
   try {
      await restClient.dio.delete('/orders/1/items/$itemId',);
    } on DioError catch (e) {
      throw RestException(message: e.toString());
    }
  }
}
