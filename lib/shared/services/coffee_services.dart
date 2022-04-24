import 'package:cafeteria_challenge/client/rest_client.dart';
import 'package:cafeteria_challenge/core/errors/rest_exception.dart';
import 'package:cafeteria_challenge/shared/iservices/i_coffee_services.dart';
import 'package:cafeteria_challenge/shared/models/coffee_model.dart';
import 'package:dio/dio.dart';


class CoffeeServices implements ICoffeeServices {
  
  @override
  Future<List<CoffeeModel>> getCoffee() async{
    try{
      final response = await restClient.dio.get('/coffees');
      final List<CoffeeModel> coffeList = response.data.map<CoffeeModel>((coffee) => CoffeeModel.fromMap(coffee)).toList();
      return coffeList;
    }on DioError catch(e){
     throw RestException(message: e.toString());
    }
  }
  
}