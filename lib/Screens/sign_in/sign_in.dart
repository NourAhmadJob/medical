import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import '../../widgets/intro_button.dart';
import '../sign_up/sign_up.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return const Color(0xff667085);
  }

  bool isChecked = false;
  bool passwordVisible2 = true;

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
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Welocme to WeCare ",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff667085),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Email',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextField(
                            obscureText: passwordVisible2,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  passwordVisible2 == false
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color(0xffD0D5DD),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible2 = !passwordVisible2;
                                    },
                                  );
                                },
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Password',
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 0, top: 10),
                              child: Text(
                                "Remember password",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff667085),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff494DA5),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        IntroButton(
                          title: "Sign In",
                          height: 56,
                          width: 335,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Expanded(
                              child: Divider(
                                  color: Color(0xffEAECF0),
                                  height: 2,
                                  endIndent: 5,
                                  indent: 15,
                                  thickness: 2),
                            ),
                            Text("Or"),
                            Expanded(
                              child: Divider(
                                  color: Color(0xffEAECF0),
                                  height: 2,
                                  endIndent: 5,
                                  indent: 15,
                                  thickness: 2),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 56,
                          width: 335,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                      AppAssets.goolelogo,
                                    ),
                                    height: 35),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const SingUp(),
                                transition: Transition.rightToLeft);
                          },
                          child: Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Center(
                              child: RichText(
                                text: const TextSpan(
                                  text: "Don't have an account?",
                                  style: TextStyle(
                                      color: Color(0xff344054),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Sign Up',
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
