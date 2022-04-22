import 'package:cafeteria_challenge/ui/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<CartController> {
   
   const HomePage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('CartPage'),),
           body: Container(),
       );
  }
}