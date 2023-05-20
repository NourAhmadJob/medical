import 'package:get/get.dart';
import 'services.dart';

class SignUpController extends GetxController {
  var name = '';
  var email = '';
  var password = '';
  var c_password = '';
  var registerstaus = false;

  signupsrvices services = signupsrvices();
  Future<void> onClicksignup() async {
    patient user = patient(
        name: name, email: email, password: password, c_password: c_password);
    registerstaus = await services.signup(user);
  }
}

class patient {
  String? name;
  String? email;
  String? password;
  String? c_password;

  patient({
    this.name,
    this.email,
    this.password,
    this.c_password,
  });
}
