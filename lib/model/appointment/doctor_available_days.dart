class DoctorAvaliableDays {
  final int id;
  final int doctor_id;
  final int sun;
  final int mon;
  final int tue;
  final int we;
  final int thu;
  final int fri;
  final int sat;

  DoctorAvaliableDays({
    required this.id,
    required this.doctor_id,
    required this.sun,
    required this.mon,
    required this.tue,
    required this.we,
    required this.thu,
    required this.fri,
    required this.sat,
  });

  factory DoctorAvaliableDays.fromJson(Map<String, dynamic> json) {
    return DoctorAvaliableDays(
      id: json['id'],
      doctor_id: json['doctor_id'],
      sun: json['sun'],
      mon: json['mon'],
      tue: json['tue'],
      we: json['wen'],
      thu: json['thu'],
      fri: json['fri'],
      sat: json['sat'],
    );
  }
}
