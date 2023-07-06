import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:medical_u/core/utils/constant/shared_constance.dart';
import 'package:medical_u/medical_app/Screens/bottom_page/bottom_page.dart';
import 'package:medical_u/medical_app/Screens/sign_in/sign_in.dart';
import 'package:medical_u/medical_app/Screens/sign_up/sign_up.dart';
import 'package:medical_u/medical_app/controller/getx_binding.dart/sign_in_binding.dart';
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
