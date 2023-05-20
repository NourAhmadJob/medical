import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/intro_button.dart';
import '../Summary/Summary.dart';

class Bookappointment extends StatefulWidget {
  const Bookappointment({Key? key}) : super(key: key);

  @override
  State<Bookappointment> createState() => _BookappointmentState();
}

class _BookappointmentState extends State<Bookappointment> {
  List<String> hobbyList = [
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 AM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
    '04:00 PM',
    '05:00 PM',
  ];

  int? _value = 1;

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
                  child: Text("Book Appointment",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ],
            ),
            const ListTile(
              title: Text("Select Date",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 10, offset: Offset(5, 6))
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: 336,
              child: TableCalendar(
                onDaySelected: (selectedDay, focusedDay) {},
                firstDay: DateTime.utc(
                  2022,
                  10,
                ),
                lastDay: DateTime.utc(2040, 10),
                focusedDay: DateTime.now(),
              ),
            ),
            const ListTile(
              title: Text("Select Hour",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            ),
            Wrap(
              spacing: 5,
              children: List<Widget>.generate(
                9,
                (int index) {
                  return Container(
                    height: 55,
                    width: 105,
                    child: ChoiceChip(
                      padding: const EdgeInsets.only(
                          left: 12, right: 15, top: 12, bottom: 12),
                      shape: const StadiumBorder(
                          side: BorderSide(width: 2, color: Color(0xff31B4E6))),
                      label: Text(hobbyList[index]),
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
                Get.to(const Summary(), transition: Transition.rightToLeft);
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
