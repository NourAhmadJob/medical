import 'package:get_storage/get_storage.dart';

class BaseUpComingModel {
  // List<UpConmingAppointment> UpComingList = [];
  //
  // BaseUpComingModel.fromJson(Map<String , dynamic>json){
  //   json['upcoming_Appointment'].forEach((elements){
  //     UpComingList.add(UpConmingAppointment.fromJson(elements));
  //   });
  // }
}

class UpConmingAppointment {
  final String appointment_date;
  final int id;
  final String status;
   TimeSlot? timeSlot;
  final doctorAppointment doctor;

  UpConmingAppointment(
      {required this.appointment_date,
      required this.status,
      required this.doctor,
      required this.id,
       this.timeSlot});

  factory UpConmingAppointment.fromJson(Map<String, dynamic> json) {
    return UpConmingAppointment(
      appointment_date: json['appointment_date'],
      status: json["status"],
      id: json['id'],
      doctor: doctorAppointment.fromJson(json['doctor']),
      timeSlot:  json['time_slot'] != null ? TimeSlot.fromJson(json['time_slot']) : null,
    );
  }
}

class doctorAppointment {
  final String name;
  final int id;
  final String email;

  doctorAppointment({
    required this.name,
    required this.email,
    required this.id,
  });

  factory doctorAppointment.fromJson(Map<String, dynamic> json) {
    return doctorAppointment(
      name: json['name'],
      email: json['email'],
      id: json['id'],
    );
  }
}

class TimeSlot {
  final String from;
  final int id;
  TimeSlot({
    required this.from,
    required this.id,
  });

  factory TimeSlot.fromJson(Map<String, dynamic> json) {
    return TimeSlot(
      from: json['from'],
      id: json['id'],
    );
  }
}
