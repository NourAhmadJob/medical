import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_in/sign_in.dart';
import 'package:medical_u/controller/home_controller.dart';
import '../../constant/app_asset.dart';

class Appointments extends StatefulWidget {
  @override
  State<Appointments> createState() => AppointmentsState();
}

class AppointmentsState extends State<Appointments> {



  HomeController controller = Get.put(HomeController()..getUpComingAppointment()..UpComingList);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          titleSpacing: -2,
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child:
                  const Icon(Icons.arrow_back_outlined, color: Colors.black)),
          title: const Text("Appointments",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _tabSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    HomeController controller1 = Get.put(HomeController());
    return DefaultTabController(
      length: 1,
      child: SingleChildScrollView(
        child:  Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 52,
                width: 335,
                decoration: BoxDecoration(
                    color: const Color(0xffEEEEFF),
                    borderRadius: BorderRadius.circular(16)),
                child: TabBar(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    unselectedLabelColor: const Color(0xff8E90C7),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    tabs: const [
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Categories",
                              style: TextStyle(
                                color: Color(0xff8E90C7),
                              )),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 850,
                child: SingleChildScrollView(
                  child: Center(
                    child: GetBuilder<HomeController>(
                      init: HomeController(),
                      builder: (controller1)=>  Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                            controller.UpComingList.length,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                    // backgroundImage:
                                                    //     AssetImage(upcoming[index]),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10, bottom: 5),
                                                      child: Text(
                                                          controller
                                                              .UpComingList[index]
                                                              .doctor
                                                              .name,
                                                          style: const TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w600,
                                                              color: Colors.black,
                                                              fontSize: 18)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Text(
                                                          controller
                                                              .UpComingList[index]
                                                              .doctor
                                                              .email,
                                                          style: const TextStyle(
                                                              color: Colors.black,
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              fontSize: 14)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5, top: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Icon(Icons.star,
                                                              color:
                                                                  Color(0xff36C8FF),
                                                              size: 20),
                                                          Text("4.8",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.calendar_month_sharp,
                                                  color: Colors.grey, size: 20),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  controller1.UpComingList[index]
                                                      .appointment_date
                                                      .toString(),
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
                                              Text(
                                                  controller1.UpComingList[index]
                                                      .timeSlot!.from,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.grey,
                                                      fontSize: 12)),
                                              SizedBox(
                                                width: 15,
                                              ),
                                             controller1.getIcon(controller.UpComingList[index].status),
                                              SizedBox(
                                                width: 5,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              controller.UpComingList[index].status == "2"?
                                              InkWell(
                                              onTap: (){
                              controller1.deleteAppointment(id: controller.UpComingList[index].id , context: context);
                            },
                              child: Container(
                                width: 140,
                                height: 44,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                child:  Center(
                                    child: Text("Delete",
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight.w600,
                                            fontSize: 12))
                                ),
                              ),
                            ) :
                                              InkWell(
                                                onTap: (){
                                                  controller1.cancelAppointment(id: controller.UpComingList[index].id , context: context);
                                                },
                                                child: Container(
                                                  width: 140,
                                                  height: 44,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: 1,
                                                        color:
                                                        const Color(0xff1C208F),
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(10)),
                                                  child:  Center(
                                                    child: Text("Cancel",
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight.w600,
                                                            fontSize: 12))
                                                  ),
                                                ),
                                              ) ,
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
                                                      color:
                                                          const Color(0xff1C208F),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: const Center(
                                                    child: Text("Reschedule",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
