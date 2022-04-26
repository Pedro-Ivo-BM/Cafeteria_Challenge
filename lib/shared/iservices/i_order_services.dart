import 'package:cafeteria_challenge/shared/models/order_model.dart';

abstract class IOrderServices {
  Future<List<OrderModel>> getOrder();

  Future addOrder(int price,);

  Future updateOrder (int newPrice,);

  Future deleteOrder();
}