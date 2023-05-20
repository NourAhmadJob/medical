import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import '../../widgets/intro_button.dart';
import '../bottom_page/bottom_page.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 60, left: 25),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60, left: 10),
                  child: Text("Account",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image(
                  image: AssetImage(AppAssets.Congratulations), height: 320),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Congratulations!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Your account has been created",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff667085),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Get.to(HomePage(), transition: Transition.rightToLeft);
              },
              child: IntroButton(
                title: "Go Home",
                height: 56,
                width: 168,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
