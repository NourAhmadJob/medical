import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/sign_in/sign_in.dart';
import 'package:medical_u/controller/sign_up_controller.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../widgets/intro_button.dart';
import '../Congratulations/congratulations.dart';

class Veirfy extends StatefulWidget {
  @override
  State<Veirfy> createState() => _VeirfyState();
}

class _VeirfyState extends State<Veirfy> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  @override
  SignUpController controller = Get.put(SignUpController());

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
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 64,
                                height: 68,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: controller1,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: Color(0xff1C208F),
                                    ),
                                  )),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 64,
                                height: 68,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: Color(0xff1C208F),
                                    ),
                                  )),
                                  controller: controller2,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 64,
                                height: 68,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: Color(0xff1C208F),
                                    ),
                                  )),
                                  controller: controller3,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 64,
                                height: 68,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: Color(0xff1C208F),
                                    ),
                                  )),
                                  controller: controller4,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        InkWell(
                          onTap: () {
                            //print("${controller1.text}${controller2.text}${controller3.text}${controller4.text}");
                            controller.getVerfiy(
                                code:
                                    "${controller1.text}${controller2.text}${controller3.text}${controller4.text}",
                                context: context);
                          },
                          child: IntroButton(
                            title: "Continue",
                            height: 56,
                            width: 335,
                          ),
                        ),
                        SizedBox(
                          height: 90.0,
                        ),

                        GestureDetector(
                          onTap: () {
                             // api resend
                            controller.getResendCode(context);

                          },
                          child: Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Center(
                              child: RichText(
                                text: const TextSpan(
                                  text: "Don't receive code ? ",
                                  style: TextStyle(
                                      color: Color(0xff344054),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Resend Email',
                                      style: TextStyle(
                                          color: Color(0xff1C208F),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
