// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:medical_u/controller/home_controller.dart';
//
// class DoctorByDepartment extends StatelessWidget {
//   final int id;
//
//   const DoctorByDepartment({super.key, required this.id});
//
//   @override
//   Widget build(BuildContext context) {
//     HomeController controller = Get.put(HomeController()..getAllDoctorByDep(id: id));
//     //controller.getAllDoctorByDep(id:controller.listModel[index].id);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//       ),
//       body: GetBuilder<HomeController>(
//             init: HomeController(),
//             builder: (controller3) => Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ListView.separated(
//                   shrinkWrap: true,
//                     physics: BouncingScrollPhysics(),
//                     itemBuilder: (context, index) => Padding(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 15, horizontal: 5),
//                           child: InkWell(
//                             onTap: () {
//                               controller.getAllDoctorByDep(id: id);
//                               // Get.to(const Profileabout(),
//                               //     transition: Transition.rightToLeft);
//                             },
//                             child: Container(
//                                 height: 120,
//                                 width: 280,
//                                 decoration: BoxDecoration(
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color: Colors.black12,
//                                         blurRadius: 10,
//                                         offset: Offset(5, 6),
//                                       ),
//                                     ],
//                                     color: Colors.white,
//                                     borderRadius:
//                                         BorderRadius.circular(20)),
//                                 child: Column(
//                                   crossAxisAlignment:
//                                       CrossAxisAlignment.center,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.center,
//                                   children: [
//                                     Center(
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           // CircleAvatar(
//                                           //   maxRadius: 30,
//                                           //   backgroundImage:
//                                           //       AssetImage(popular[index]),
//                                           // ),
//                                           Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsets.only(
//                                                     left: 10),
//                                                 child: Text(
//                                                     controller3
//                                                         .doctor_dep[index]
//                                                         .name1,
//                                                     style: TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.w600,
//                                                         fontSize: 14)),
//                                               ),
//                                               Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceEvenly,
//                                                 children: [
//                                                   Padding(
//                                                     padding:
//                                                         EdgeInsets.only(
//                                                             left: 10),
//                                                     child: Text(
//                                                         controller3
//                                                             .doctor_dep[
//                                                                 index]
//                                                            .model.name_en
//                                                             .toString(),
//                                                         style: TextStyle(
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w400,
//                                                             fontSize: 14)),
//                                                   ),
//                                                   SizedBox(
//                                                     width: 70,
//                                                   ),
//                                                   Icon(
//                                                     Icons.message_outlined,
//                                                     size: 20,
//                                                     color:
//                                                         Color(0xff1C208F),
//                                                   )
//                                                 ],
//                                               ),
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.only(
//                                                         left: 5),
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment
//                                                           .spaceEvenly,
//                                                   children: const [
//                                                     Icon(Icons.star,
//                                                         color: Color(
//                                                             0xff36C8FF)),
//                                                     Text(
//                                                         "4.8 (110 Reviews)",
//                                                         style: TextStyle(
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w500,
//                                                             fontSize: 14)),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 )),
//                           ),
//                         ),
//                     separatorBuilder: (context, index) => SizedBox(
//                           height: 20.0,
//                         ),
//                     itemCount: controller3.doctor_dep.length),
//               ),
//           )
//
//     );
//   }
// }
