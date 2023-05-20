import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/intro_button.dart';
import '../intro_pages/intro_screen_1.dart';
import '../intro_pages/intro_screen_2.dart';
import '../intro_pages/intro_screen_3.dart';
import '../selcettype/selcettype.dart';
import '../sign_in/sign_in.dart';
import 'landing_screen_controller.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final landingScreenController = Get.put(LandingScreenController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics()),
            onPageChanged: landingScreenController.onChange,
            controller: landingScreenController.pageController.value,
            children: const [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
            ],
          ),
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${landingScreenController.currentIndex.value}/3",
                  style: const TextStyle(color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    Get.to(const Selectype(),
                        transition: Transition.rightToLeft);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: const Color(0xff8E90C7)),
                          borderRadius: BorderRadius.circular(14)),
                      height: 36,
                      width: 53,
                      child: const Center(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff1C208F)),
                        ),
                      )),
                ),
              ],
            );
          }).marginOnly(right: 20, left: 20, top: 50),
          Container(
            margin: const EdgeInsets.only(
              top: 220,
            ),
            child: Center(
              child: SmoothPageIndicator(
                controller: landingScreenController.pageController.value,
                count: 3,
                effect: const SlideEffect(
                  activeDotColor: Color(0xff36C8FF),
                  dotHeight: 10,
                  dotColor: Color(0xffEAECF0),
                  dotWidth: 10,
                ),
              ),
            ),
          ),
          GetBuilder<LandingScreenController>(
            assignId: true,
            builder: (logic) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, left: 25, right: 10),
                    child: IntroButton(
                      onTap: () {
                        (landingScreenController.currentIndex.value == 3)
                            ? Get.to(const Selectype(),
                                transition: Transition.rightToLeft)
                            : landingScreenController.pageController.value
                                .nextPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.linear);
                      },
                      title: 'Next',
                      height: 56,
                      width: 335,
                    ),
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
