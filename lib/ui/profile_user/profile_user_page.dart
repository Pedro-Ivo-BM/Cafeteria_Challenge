import 'package:cafeteria_challenge/ui/profile_user/profile_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileUserPage extends GetView<ProfileUserController> {
   
   const ProfileUserPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('CartPage'),),
           body: Container(),
       );
  }
}