import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/constant/shared_constance.dart';
import 'package:medical_u/controller/home_controller.dart';
import 'package:medical_u/getx_binding.dart/home_binding.dart';
import 'Screens/bottom_page/bottom_page.dart';
import 'Screens/sign_in/sign_in.dart';
import 'Screens/sign_up/sign_up.dart';
import 'getx_binding.dart/sign_in_binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SignIn(),
      getPages: [
         GetPage(name: '/sign_in', page: () => SignIn() ,binding: SignInBinding()),
         GetPage(name: '/sign_up', page: () => SingUp(), ),
         GetPage(name: '/HomePage', page: () => HomePage()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter-Regular.ttf"),
      locale: Locale("Ar"),
      builder: EasyLoading.init(),
    );
  }
}
