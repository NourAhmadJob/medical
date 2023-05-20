import 'dart:math';

import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';

import '../../constant/app_asset.dart';

class Dbottom2 extends StatefulWidget {
  const Dbottom2({Key? key}) : super(key: key);

  @override
  State<Dbottom2> createState() => _Dbottom2State();
}

class _Dbottom2State extends State<Dbottom2> {
  DateTime? selectedDate;
  Random random = new Random();

  @override
  void initState() {
    setState(() {
      selectedDate = DateTime.now();
    });
    super.initState();
  }

  List<String> upcoming = [
    AppAssets.doctor3,
    AppAssets.doctor1,
  ];

  List title = [
    "Gus Skarlis",
    "Arlene McCoy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Appointments",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: Color(0xff475467),
                  ),
                ),
              ],
            ),
            CalendarAppBar(
              firstDate: DateTime(2023),
              lastDate: DateTime.now().add(const Duration(days: 4)),
              white: const Color(0xff1C208F),
              accent: Colors.white,
              onDateChanged: (value) => setState(() => selectedDate = value),
              selectedDate: DateTime.now(),
              events: List.generate(
                  100,
                  (index) => DateTime.now()
                      .subtract(Duration(days: index * random.nextInt(5)))),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 20),
                  child: Text(
                    "11 Aug 2022",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: Color(0xff475467),
                ),
              ],
            ),
            Column(
              children: List.generate(
                  2,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Container(
                            height: 254,
                            width: 335,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                      offset: Offset(8, 6)),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                        ),
                                        child: CircleAvatar(
                                          maxRadius: 35,
                                          backgroundImage:
                                              AssetImage(upcoming[index]),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, bottom: 5),
                                            child: Text(title[index],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 18)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(Icons.circle,
                                                    color: Colors.green,
                                                    size: 10),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("Confirmed",
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
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Divider(
                                      color: Colors.grey,
                                      endIndent: 20,
                                      indent: 20),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.calendar_month_sharp,
                                        color: Colors.grey, size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("10 Dec 2022",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                            fontSize: 12)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(Icons.access_time,
                                        color: Colors.grey, size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("10:30 AM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                            fontSize: 12)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.access_time,
                                        color: Colors.grey, size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Video",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                            fontSize: 12)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 140,
                                      height: 44,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: const Color(0xff1C208F),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text("Cancel",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Get.to(const VideoCall(),transition: Transition.rightToLeft);
                                      },
                                      child: Container(
                                        width: 140,
                                        height: 44,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff1C208F),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Center(
                                          child: Text("Reschedule",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
