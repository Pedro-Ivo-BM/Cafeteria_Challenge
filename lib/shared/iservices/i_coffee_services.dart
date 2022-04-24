
import 'package:cafeteria_challenge/shared/models/coffee_model.dart';

abstract class ICoffeeServices {
  Future<List<CoffeeModel>> getCoffee ();
}