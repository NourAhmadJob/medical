
import 'package:flutter/material.dart';

import '../../constant/app_asset.dart';


class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.intro2Image,
        ),
        const SizedBox(height: 100,),
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "120+ Available Doctor",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        const SizedBox(height: 20,),
        const Text(
          "Please provide us with your medical history,",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        const SizedBox(height: 3,),
        const Text(
          "including any allergies or current medications.",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        const SizedBox(height: 3,),
        const Text(
          "This information will help us",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
      ],
    );
  }
}