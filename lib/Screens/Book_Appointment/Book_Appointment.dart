import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_in/sign_in.dart';
import 'package:medical_u/controller/appointment_controller.dart';
import 'package:medical_u/model/appointment/doctor_available_days.dart';
import 'package:medical_u/model/appointment/slots.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/intro_button.dart';
import '../Summary/Summary.dart';

class Bookappointment extends StatefulWidget {

  final int id_doctor;
  final List listDay;

  const Bookappointment(
      {super.key, required this.id_doctor, required this.listDay});

  @override
  State<Bookappointment> createState() =>
      _BookappointmentState(

        id_doctor: id_doctor,
        listDay: listDay,
      );
}

class _BookappointmentState extends State<Bookappointment> {
  final List listDay;
  final int id_doctor;

  SlotsModel? slotsModel ;
  List hobbyList = [];
  int? _value = 1;
  DateTime _select_day = DateTime.utc(2040);

  DateTime _first_day = DateTime.utc(
      2022
  );
  DateTime _fcousedDay = DateTime.now();

  _BookappointmentState({ required this.id_doctor, required this.listDay });

  CalendarFormat? _calendarFormat;

  AppointmentController controller1 = Get.put(AppointmentController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(
      init: AppointmentController()
        ..slotsModel
        ..avaliableDays
        ..getAllDoctorAvaliableDays(id_doctor: id_doctor),
      builder: (controller) =>
          Scaffold(
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
                        child: Text("Book Appointment",
                            style:
                            TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ),
                    ],
                  ),
                  const ListTile(
                    title: Text("Select Date",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(5, 6))
                    ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    width: 336,
                    child: TableCalendar(

                      daysOfWeekVisible: true,
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _select_day = selectedDay;
                          _fcousedDay =
                              focusedDay; // update `_focusedDay` here as well
                        });
                        print("${_select_day.month}/${_select_day
                            .day}/${_select_day.year}");
                        String dateTime = "${_select_day.month}/${_select_day
                            .day}/${_select_day.year}";
                        controller.getSlotTime(
                            id_doctor: id_doctor, dateTime: dateTime);
                      },
                      enabledDayPredicate: (DateTime date) {
                        for (int i = 0; i < listDay.length; i++)
                          if (date.weekday == listDay[i]) {
                            return false;
                          }
                        return true;
                      },
                      // selectedDayPredicate: (DateTime date){
                      //
                      //   // if (date.weekday == 6 || date.weekday == 7) {
                      //   //   return false;
                      //   // }
                      //   // return true;
                      // },
                      selectedDayPredicate: (DateTime date) {
                        return isSameDay(_select_day, date);
                      },
                      startingDayOfWeek: StartingDayOfWeek.sunday,
                      //calendarFormat: _calendarFormat!,
                      onFormatChanged: (format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      },
                      firstDay: DateTime.now(),
                      lastDay: DateTime(2033),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                  const ListTile(
                    title: Text("Select Hour",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  ),
                  Wrap(
                    spacing: 5,
                    children: List<Widget>.generate(
                      controller.slotsModel.length,
                          (int index) {
                        return Container(
                          height: 55,
                          width: 105,
                          child: ChoiceChip(
                            padding: const EdgeInsets.only(
                                left: 12, right: 15, top: 12, bottom: 12),
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    width: 2, color: Color(0xff31B4E6))),
                            label: Text(controller.slotsModel[index].from),
                            backgroundColor: Colors.transparent,
                            labelStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            selectedColor: const Color(0xff31B4E6),
                            elevation: 0.50,
                            selected: _value == index,
                            onSelected: (bool selected) {
                              setState(() {
                                _value = selected ? index : null;
                                slotsModel = controller.slotsModel[_value!];
                                print(slotsModel!.id);
                              });
                            },
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IntroButton(
                    title: "Next",
                    width: 336,
                    height: 56,
                    onTap: () {
                      controller1.getAppcomingStore(
                        context: context,
                        appointment_with: id_doctor,
                        appointment_date: "${_select_day.month}/${_select_day.day}/${_select_day.year}",
                        available_slot: slotsModel!.id ,);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
