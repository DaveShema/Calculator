import 'package:calc/controller/networkcontroller.dart';
import 'package:get/get.dart';

class DependecyInjection {
  static void init() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}