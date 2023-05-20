import 'package:flutter/material.dart';

import '../../constant/app_asset.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.intro3Image,
        ),
        const SizedBox(height: 100,),
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "Begin your medical care",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        const SizedBox(height: 20,),
        const Text(
          "you can easily book appointments with your",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        const SizedBox(height: 3,),
        const Text(
          "healthcare provider, view your medical records,",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        const SizedBox(height: 3,),
        const Text(
          "and receive reminders for upcoming",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ), const SizedBox(height: 3,),
        const Text(
          "appointments and medications.",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
      ],
    );
  }
}