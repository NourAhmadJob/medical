import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../widgets/intro_button.dart';
import '../Congratulations/congratulations.dart';

class Veirfy extends StatefulWidget {
  const Veirfy({Key? key}) : super(key: key);

  @override
  State<Veirfy> createState() => _VeirfyState();
}

class _VeirfyState extends State<Veirfy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff111355),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff111355),
          body: Column(
            children: [
              Container(
                height: 0,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 0,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 25, left: 25),
                              child: Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Verify",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Check your email and verify code",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff667085),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        OTPTextField(
                          otpFieldStyle: OtpFieldStyle(),
                          margin: const EdgeInsets.only(top: 50),
                          length: 4,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 20),
                          width: 320,
                          fieldWidth: 65,
                          fieldStyle: FieldStyle.box,
                          outlineBorderRadius: 16,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const Congratulations(),
                                transition: Transition.rightToLeft);
                          },
                          child: IntroButton(
                            title: "Continue",
                            height: 56,
                            width: 335,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
