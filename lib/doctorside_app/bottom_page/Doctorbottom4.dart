import 'package:flutter/material.dart';
import 'package:medical_u/constant/app_asset.dart';

class Dbottom4 extends StatefulWidget {
  const Dbottom4({Key? key}) : super(key: key);

  @override
  State<Dbottom4> createState() => _Dbottom4State();
}

class _Dbottom4State extends State<Dbottom4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text("Dashboard",
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 122,
            width: 335,
            decoration: BoxDecoration(
                color: const Color(0xff1C208F),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Total Earnings",
                        style: TextStyle(
                            color: Color(0xff8E90C7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\$2,509.78",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 30)),
                  ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text("This Month",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 86,
                width: 101,
                decoration: BoxDecoration(
                    color: const Color(0xffEEEEFF),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("100",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff111355))),
                    Text("Patients",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                  ],
                ),
              ),
              Container(
                height: 86,
                width: 101,
                decoration: BoxDecoration(
                    color: const Color(0xffC3EFFF),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("3",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff268CB3))),
                    Text("Days off",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                  ],
                ),
              ),
              Container(
                height: 86,
                width: 101,
                decoration: BoxDecoration(
                    color: const Color(0xffFEF3F2),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("12",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xffA95132))),
                    Text("Clinic Visit",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text("Online Sessions",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text("60 min"),
                  SizedBox(height: 40,),
                  Text("30 min"),
                  SizedBox(height: 40,),
                  Text("0 min"),
                ],
              ),
              const SizedBox(width: 10,),
              Image(image: AssetImage(AppAssets.graph)),
            ],
          )
        ],
      ),
    );
  }
}
