import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import '../Appointments/Appointments.dart';
import '../Search_result/Search_result.dart';
import '../profile_about_doctor/profile_about_doctor.dart';

class Bottomone extends StatefulWidget {
  const Bottomone({Key? key}) : super(key: key);

  @override
  State<Bottomone> createState() => _BottomoneState();
}

class _BottomoneState extends State<Bottomone> {

  List<String> Exploreby = [
    "Cardiologist",
    "Eye sp",
    "Neuroscien",
  ];

  List<String> images = [
    AppAssets.Heart,
    AppAssets.eyesp,
    AppAssets.brain,
  ];

  List<String> popular = [
    AppAssets.doctor1,
    AppAssets.doctor3,
  ];

  List<String> upcoming = [
    AppAssets.doctor3,
    AppAssets.doctor1,
  ];

  // int _selectedIndex = 0;
  //
  // chanegindex(int value) {
  //   _selectedIndex = value;
  //   setState(() {});
  // }
  //
  // int _selectedIndex1 = 0;
  //
  // chanegindex1(int value) {
  //   _selectedIndex1 = value;
  //   setState(() {});
  // }

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
                        "Find your",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "Specialist",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 30),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Icon(Icons.notifications_none,
                      size: 30, color: Color(0xff475467)),
                )
              ],
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 40),
          width: 335,
          height: 52,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.search, color: Color(0xff1C208F)),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xff1C208F), width: 1.0),
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffD0D5DD), width: 1.0),
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: 'Search doctor...',
            ),
          ),
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
                            vertical: 20, horizontal: 5),
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset: Offset(5, 6))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Image(
                                      image: AssetImage(images[index]),
                                      width: 50,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Center(
                                    child: Text(Exploreby[index],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Popular Doctor",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                )),
            const SizedBox(
              width: 110,
            ),
            InkWell(
              onTap: () {
                Get.to(const Searchresult(),
                    transition: Transition.rightToLeft);
              },
              child: const Text("View all",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xff1C208F),
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
                            vertical: 15, horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            Get.to(const Profileabout(),
                                transition: Transition.rightToLeft);
                          },
                          child: Container(
                              height: 120,
                              width: 280,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      offset: Offset(5, 6),
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          maxRadius: 30,
                                          backgroundImage:
                                              AssetImage(popular[index]),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text("Dr Gourav Solanaki",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14)),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: const [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text("Dermatology",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14)),
                                                ),
                                                SizedBox(
                                                  width: 70,
                                                ),
                                                Icon(
                                                  Icons.message_outlined,
                                                  size: 20,
                                                  color: Color(0xff1C208F),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: const [
                                                  Icon(Icons.star,
                                                      color: Color(0xff36C8FF)),
                                                  Text("4.8 (110 Reviews)",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
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
              child: Text("Upcoming Appointment",
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
                            vertical: 15, horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            Get.to(const Appointments(),
                                transition: Transition.rightToLeft);
                          },
                          child: Container(
                              height: 140,
                              width: 287,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        offset: Offset(5, 6)),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          maxRadius: 25,
                                          backgroundImage:
                                              AssetImage(upcoming[index]),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Row(
                                                children: const [
                                                  Text("Dr Tania Alam",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black,
                                                          fontSize: 14)),
                                                  SizedBox(
                                                    width: 60,
                                                  ),
                                                  Icon(
                                                    Icons.more_vert,
                                                    color: Colors.black,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text("Cosmetologist",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 20, right: 80),
                                    width: 161,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffEEEEFF),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.access_time, size: 18),
                                        Text(" Thu, Dec at 10:00 am",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      )),
            ),
          ),
        ),
      ],
    )));
  }
}
