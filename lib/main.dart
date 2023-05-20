import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/landing_pages/landing_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter-Regular.ttf"),
      home: LandingScreen(),
    );
  }
}
