import 'package:cafeteria_challenge/shared/models/items_model.dart';

abstract class IItemsServices {
  Future<List<ItemsModel>> getItems();

  Future addItem(int size, int amount, int sugarAmount ,double unityPrice);

  Future updateItem (int newAmount, String itemId);

  Future deleteItem (String itemId);
}