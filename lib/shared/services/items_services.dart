import 'package:cafeteria_challenge/client/rest_client.dart';
import 'package:cafeteria_challenge/core/errors/rest_exception.dart';
import 'package:cafeteria_challenge/shared/iservices/i_items_services.dart';
import 'package:cafeteria_challenge/shared/models/items_model.dart';
import 'package:dio/dio.dart';


class ItemsServices implements IItemsServices {
  
  @override
  Future<List<ItemsModel>> getItems() async{
    try{
      final response = await restClient.dio.get('/orders/1/items');
      final List<ItemsModel> itemsList = response.data.map<ItemsModel>((cart) => ItemsModel.fromMap(cart)).toList();
      return itemsList;
    }on DioError catch(e){
     throw RestException(message: e.toString());
    }
  }
  
}