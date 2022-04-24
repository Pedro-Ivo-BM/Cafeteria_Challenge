import 'package:cafeteria_challenge/shared/models/items_model.dart';

abstract class IItemsServices {
  Future<List<ItemsModel>> getItems();
}