import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_up/sign_up_controller.dart';

class SignUpbinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController());
  }
}
