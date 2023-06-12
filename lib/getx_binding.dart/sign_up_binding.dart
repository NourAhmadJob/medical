import 'package:get/get.dart';
import 'package:medical_u/controller/sign_up_controller.dart';


class SignUpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController()..getAllCities());
  }
}
