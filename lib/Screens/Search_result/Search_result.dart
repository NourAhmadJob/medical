import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import '../profile_about_doctor/profile_about_doctor.dart';

class Searchresult extends StatefulWidget {
  const Searchresult({Key? key}) : super(key: key);

  @override
  State<Searchresult> createState() => _SearchresultState();
}

class _SearchresultState extends State<Searchresult> {
  List<String> upcoming = [
    AppAssets.doctor3,
    AppAssets.doctor1,
    AppAssets.doctor2,
  ];

  List title = [
    "Dr. Gourav Solanaki",
    "Dr. Jane Smith",
    "Dr. Marvin McKinney",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 15),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 25,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60, left: 10),
                  child: Text("Search result",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 335,
              height: 52,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon:
                      const Icon(Icons.search, color: Color(0xff1C208F)),
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
                  hintText: 'Cardiologist',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 170),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '38 ',
                        style: TextStyle(
                          color: Color(0xff36C8FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    TextSpan(
                      text: 'Available Doctors',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: List.generate(
                  3,
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
                                          const Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text("Cardiologist",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(Icons.star,
                                                    color: Color(0xff36C8FF),
                                                    size: 20),
                                                Text("4.8",
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
                                const SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Fee Starts\nfrom",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12)),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text("\$20",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24)),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(const Profileabout(),transition: Transition.rightToLeft);
                                      },
                                      child: Container(
                                        width: 140,
                                        height: 44,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff1C208F),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Center(
                                          child: Text("Book Now",
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
