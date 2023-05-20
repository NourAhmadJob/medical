import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_asset.dart';
import 'doctorprofile.dart';

class Dbottom1 extends StatefulWidget {
  const Dbottom1({Key? key}) : super(key: key);

  @override
  State<Dbottom1> createState() => _Dbottom1State();
}

class _Dbottom1State extends State<Dbottom1> {
  List<String> Exploreby = [
    "Requests",
    "Patients",
    "Clinics",
  ];

  List<String> images = [
    AppAssets.requesticon,
    AppAssets.PatientsIcon,
    AppAssets.clinicicon,
  ];

  List<String> todays = [
    AppAssets.doctor5,
    AppAssets.doctor6,
  ];

  List<String> title = [
    "Gus Skarlis",
    "Arlene McCoy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 50, left: 10),
                          child: Text(
                            "Welcome Back,",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Dr. Shahin Alam",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Icon(Icons.notifications_none,
                          size: 30, color: Color(0xff475467)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: InkWell(
                        onTap: () {
                          Get.to(const Profiledoctor(),
                              transition: Transition.rightToLeft);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          maxRadius: 20,
                          backgroundImage: AssetImage(AppAssets.doctor1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 5),
                            child: Center(
                              child: Container(
                                height: 108,
                                width: 126,
                                decoration: BoxDecoration(
                                    color: const Color(0xff1C208F),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: CircleAvatar(
                                        backgroundColor: const Color(0xffEEEEFF)
                                            .withOpacity(0.8),
                                        child: Image(
                                          image: AssetImage(images[index]),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(Exploreby[index],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Todays Appointment",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      2,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 5),
                            child: Container(
                              height: 200,
                              width: 191,
                              decoration: BoxDecoration(
                                  color: const Color(0xffEEEEFF),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: CircleAvatar(
                                        maxRadius: 40,
                                        child: Image(
                                          image: AssetImage(
                                            todays[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(title[index],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text("10:00 - 10:30 am",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ),
            ),
            Container(
              height: 122,
              width: 335,
              decoration: BoxDecoration(
                  color: const Color(0xffEEEEFF),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Weekly Earnings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Text("\$1,50.78",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 30)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

