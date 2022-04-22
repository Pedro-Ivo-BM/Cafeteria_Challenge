import 'package:cafeteria_challenge/ui/stand_by_screen/stand_by_screen_controller.dart';
import 'package:get/get.dart';


class StandByScreenBinding implements Bindings {
  @override
  void dependencies() {
  
    Get.put(StandByScreenController());
  }
}
