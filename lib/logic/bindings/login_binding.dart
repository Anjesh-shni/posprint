import 'package:get/get.dart';
import 'package:posprint/logic/controller/auth_controller.dart';
import 'package:posprint/logic/controller/login_controller.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.put(AuthController());
  }
}
