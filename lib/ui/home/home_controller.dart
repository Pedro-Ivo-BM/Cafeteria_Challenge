import 'package:cafeteria_challenge/core/errors/rest_exception.dart';
import 'package:cafeteria_challenge/core/routers/app_routers.dart';
import 'package:cafeteria_challenge/shared/iservices/i_coffee_services.dart';
import 'package:cafeteria_challenge/shared/models/coffee_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController { 
  RxBool isCoffeeListLoadingComplete = false.obs;
  final ICoffeeServices _iCoffeeServices;
  List<CoffeeModel> coffeeList = <CoffeeModel>[].obs;
  HomeController(this._iCoffeeServices,);

  Future<List<CoffeeModel>> onGetCoffeeList () async{
    try{
      coffeeList = await _iCoffeeServices.getCoffee();
      isCoffeeListLoadingComplete.toggle();
      return coffeeList;
    }on RestException catch (e) {
      throw e.message;
    }
  }

  void goToDetailsPage(CoffeeModel coffeeSelected){
    Get.toNamed(AppRoutes.details, arguments: coffeeSelected);
  }

  @override
  onInit() async {
    await onGetCoffeeList();
    super.onInit();
  }  
}