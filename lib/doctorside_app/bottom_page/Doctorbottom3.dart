import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import 'Appointment_Request.dart';

class Dbottom3 extends StatefulWidget {
  const Dbottom3({Key? key}) : super(key: key);

  @override
  State<Dbottom3> createState() => _Dbottom3State();
}

class _Dbottom3State extends State<Dbottom3> {
  List<String> todays = [
    AppAssets.doctor5,
    AppAssets.doctor6,
    AppAssets.doctor5,
    AppAssets.doctor6,
    AppAssets.doctor5,
    AppAssets.doctor6,
  ];

  List<String> title = [
    "Shahin Alam",
    "Gus Skarlis",
    "Jhon Smith",
    "Tania Doe",
    "Gus Skarlis",
    "Gus Skarlis",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text("Patients",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      )),
                ),
                SizedBox(
                  width: 140,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Icon(Icons.notifications_none,
                      size: 30, color: Color(0xff475467)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _tabSection(context),
          ],
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 52,
            width: 335,
            decoration: BoxDecoration(
                color: const Color(0xff1C208F),
                borderRadius: BorderRadius.circular(16)),
            child: TabBar(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              unselectedLabelColor: const Color(0xff8E90C7),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              tabs: const [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Past",
                        style: TextStyle(
                          color: Color(0xff8E90C7),
                        )),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("New",
                        style: TextStyle(
                          color: Color(0xff8E90C7),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 650,
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 25, top: 30),
                          child: Text("112 Old patients",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 160),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Get.to(const Appointment(),transition: Transition.rightToLeft);
                            },
                            child: Container(
                              height: 100,
                              width: 104,
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
                                        maxRadius: 30,
                                        child: Image(
                                          image: AssetImage(todays[index]),
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
                                    const Text("13 jan 2022",
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
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 25, top: 30),
                          child: Text("112 Old patients",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 160),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 100,
                            width: 104,
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
                                      maxRadius: 30,
                                      child: Image(
                                        image: AssetImage(todays[index]),
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
                                  const Text("13 jan 2022",
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
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
