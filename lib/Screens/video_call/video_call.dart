import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/constant/app_asset.dart';

import '../Messages/Messages.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppAssets.videocall))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(const Messages(),transition: Transition.rightToLeft);
                  },
                  child: const Icon(
                    Icons.messenger,
                  ),
                ),
              ),
              const SizedBox(
                width: 170,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                ),
                child: Image(image: AssetImage(AppAssets.videocall1)),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 580, left: 90),
            child: Text(
              "Md Shahin Alam",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 24),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 620, left: 140),
            child: Text(
              "00:30:00",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 660, left: 0),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(Icons.videocam_outlined),
              ),
              Container(
                margin: const EdgeInsets.only(top: 660, left: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffF73859),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(Icons.call, color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.only(top: 660, left: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(Icons.mic),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 745, left: 165),
            child: Transform(
              transform: Matrix4.rotationZ(4.7),
              child: const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 750, left: 120),
            child: Text(
              "Swipe back to menu",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
