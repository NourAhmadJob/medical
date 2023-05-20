import 'package:http/http.dart' as http;
import 'package:medical_u/Screens/sign_up/sign_up_controller.dart';

class signupsrvices {
  var url = Uri.parse('http://localhost:8000/api/register');

  Future<bool> signup(patient user) async {
    var respons = await http.post(
      url,
      headers: {'accept': 'application/json '},
      body: {
        'name': user.name,
        'email': user.email,
        'password': user.password,
        'c_password': user.c_password,
      },
    );
    print(respons.statusCode);
    print(respons.body);
    if (respons.statusCode == 200) {
      return true;
    } else if (respons.statusCode == 422) {
      return false;
    } else {
      return false;
    }
  }
}
