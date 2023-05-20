import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 380,
                    width: 360,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppAssets.Background))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 25),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 62, left: 60),
                    child: Text("Appointment Request",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 150, left: 60),
                    height: 44,
                    width: 240,
                    decoration: BoxDecoration(
                        color: const Color(0xff494DA5),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        Text(" Thu, Dec at 10:00 am",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260, left: 50),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 50,
                      backgroundImage: AssetImage(AppAssets.videocall1),
                    ),
                  )
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 100),
            child: Text(
              "Ryan Tabb",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 160, top: 50),
            child: Text(
              "Comments",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 42, top: 10),
            child: ListTile(
              title: Text(
                  "It is not appropriate to create \ndummy medical symptoms for any \npurpose, including app design. \nMedical symptoms can have serious \nimplications for a person's health, \nand it is important to take them \nseriously.",
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 30,
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
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text("Decline",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                // onTap: () {
                //   Get.to(const VideoCall(),transition: Transition.rightToLeft);
                // },
                child: Container(
                  width: 140,
                  height: 44,
                  decoration: BoxDecoration(
                      color: const Color(0xff1C208F),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("Accept",
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
      ),
    );
  }
}
