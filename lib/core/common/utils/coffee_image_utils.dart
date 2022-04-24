import 'package:cafeteria_challenge/core/common/constants/images_constants.dart';
import 'package:flutter/material.dart';


abstract class CoffeeImageUtils {
  static Widget obtainCoffeeImageByName (String coffeeName){
    if(coffeeName == "Expresso"){
      return ImagesConstants.expressoImage;
    }else if(coffeeName == "Cappuccino"){
      return ImagesConstants.cappuccinoImage;
    }else if(coffeeName == "Macchiato"){
      return ImagesConstants.macchiatoImage;
    }else if(coffeeName == "Mocha"){
      return ImagesConstants.mochaImage;
    }else{
      return ImagesConstants.latteImage;
    }
  }


  
}
