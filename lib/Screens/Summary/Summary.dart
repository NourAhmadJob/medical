import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/widgets/intro_button.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  List title = [
    "Single consultation",
    "Emergency appointment",
    "Walk-in appointment",
  ];

  int _selectedIndex = 0;

  chanegindex(int value) {
    _selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15),
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
                  padding: EdgeInsets.only(top: 50, left: 10),
                  child: Text("Summary",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              title: Text("Complete your Booking",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            ),
            Column(
              children: List.generate(
                3,
                (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: InkWell(
                    onTap: () {
                      _selectedIndex = 0;
                    },
                    child: Container(
                        height: 138,
                        width: 335,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(8, 8),
                              ),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(title[index],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text("\$20.99",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20)),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                            "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry..",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            IntroButton(title: "Next", height: 56, width: 335),
          ],
        ),
      ),
    );
  }
}
