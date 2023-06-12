import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_in/signin_controller.dart';


class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SignInController>(SignInController());
  }
}
