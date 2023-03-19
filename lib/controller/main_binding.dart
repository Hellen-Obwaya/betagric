import 'package:beta_agric/controller/main_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
  }
}
