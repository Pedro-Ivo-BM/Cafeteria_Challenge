import 'package:cafeteria_challenge/ui/details/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<DetailsController> {
   
   const DetailsPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('DetailsPage'),),
           body: Container(),
       );
  }
}