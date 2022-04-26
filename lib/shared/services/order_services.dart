import 'package:cafeteria_challenge/client/rest_client.dart';
import 'package:cafeteria_challenge/core/errors/rest_exception.dart';
import 'package:cafeteria_challenge/shared/iservices/i_order_services.dart';
import 'package:cafeteria_challenge/shared/models/order_model.dart';
import 'package:dio/dio.dart';

class OrderServices implements IOrderServices {
  @override
  Future<List<OrderModel>> getOrder() async {
    try {
      final response = await restClient.dio.get('/orders');
      final List<OrderModel> orderList = response.data
          .map<OrderModel>((cart) => OrderModel.fromMap(cart))
          .toList();
      return orderList;
    } on DioError catch (e) {
      throw RestException(message: e.toString());
    }
  }

  @override
  Future addOrder(int price) async {
    try {
      var body = {
        "id" : "1",
        "price": price, 
        };
      await restClient.dio.post('/orders/', data: body);
    } on DioError catch (e) {
      throw RestException(message: e.toString());
    }
  }

  @override
  Future deleteOrder() async{
    try {
      await restClient.dio.delete('/orders/1');
    } on DioError catch (e) {
      throw RestException(message: e.toString());
    }
  }

  @override
  Future updateOrder(int newPrice,) async{
   try {
      var body = {
        "price": newPrice, 
        };
      await restClient.dio.patch('/orders/1', data: body);
    } on DioError catch (e) {
      throw RestException(message: e.toString(),);
    }
  }
}
