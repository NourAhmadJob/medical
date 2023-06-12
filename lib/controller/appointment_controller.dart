import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/api_config/api_config.dart';
import 'package:medical_u/api_config/app_const_data.dart';
import 'package:medical_u/model/appointment/doctor_available_days.dart';
import 'package:medical_u/model/appointment/slots.dart';
import 'package:quickalert/quickalert.dart';

class AppointmentController extends GetxController {
  late Dio dio = Dio();
  List<DoctorAvaliableDays> avaliableDays = [];
  DoctorAvaliableDays? doctorAvaliableDays;

  void getAllDoctorAvaliableDays({required int id_doctor}) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData"
    };
    dio.post(
      doctorAvaliabledDays,
      data: {
        "doctor": id_doctor,
      },
    ).then(
      (value) {
        doctorAvaliableDays = value.data['available_days'] != null
            ? DoctorAvaliableDays.fromJson(value.data['available_days'])
            : null;
        update();
      },
    ).catchError(
      (error) {
        print("hello 4");
        print(error.toString());
      },
    );
    update();
  }

  List doctorAvaliableDay = [];

  List getDays(DoctorAvaliableDays name) {
    doctorAvaliableDay = [];
    if (name.sun == 0) doctorAvaliableDay.add(7);
    if (name.mon == 0) doctorAvaliableDay.add(1);
    if (name.tue == 0) doctorAvaliableDay.add(2);
    if (name.we == 0) doctorAvaliableDay.add(3);
    if (name.thu == 0) doctorAvaliableDay.add(4);
    if (name.fri == 0) doctorAvaliableDay.add(5);
    if (name.sat == 0) doctorAvaliableDay.add(6);
    update();
    return doctorAvaliableDay;
  }

  List<SlotsModel> slotsModel = [];

  getSlotTime({
    required int id_doctor,
    required dateTime,
  }) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData"
    };
    dio.post(
      slotsApi,
      data: {
        "doctor": id_doctor,
        "date": dateTime,
      },
    ).then(
      (value) {
        slotsModel = [];
        print(value.data);
        value.data['slots'].forEach(
          (elements) {
            slotsModel.add(SlotsModel.fromJson(elements));
          },
        );
        update();
      },
    ).catchError(
      (error) {},
    );
    update();
  }

  getAppcomingStore(
      {int? appointment_for,
      required int appointment_with,
      required appointment_date,
      required int available_slot,
      context}) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData"
    };

    dio.post(
      appointmentStoreApi,
      data: {
        "appointment_for": appointment_for,
        "appointment_with": appointment_with,
        "appointment_date": appointment_date,
        "available_slot": available_slot,
      },
    ).then(
      (value) {
        print(value.data);
        if (value.data['success'] == true) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Appointment Successfully",
            ),
            backgroundColor: Colors.green,
          ));
          Get.back();
        } else {
          QuickAlert.show(
              context: context,
              type: QuickAlertType.error,
              text: value.data['msg'],
              autoCloseDuration: const Duration(seconds: 2));
        }
      },
    ).catchError(
      (error) {
        print("hello 50");
        print(error.toString());
      },
    );
  }

  @override
  void onInit() {
    avaliableDays;
    doctorAvaliableDay;
    slotsModel;
    super.onInit();
  }
}
