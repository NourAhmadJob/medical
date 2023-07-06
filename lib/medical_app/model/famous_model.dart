class BaseFamousDoctorModel {
  List <FamousDoctorModel> baseFamousDoctorModel = [] ;

  BaseFamousDoctorModel.fromJson(Map<String , dynamic>json){
    json['famous doctors'].forEach((elements){
      baseFamousDoctorModel.add(FamousDoctorModel.fromJson(elements));
    });
  }
}
class FamousDoctorModel {
  final String name;
  GnrModel? gnr;
  final from_time;
  final int id;

  final to_time;

  final int slot_time;

   String? specialization_ar;

  factory FamousDoctorModel.fromJson(Map<String, dynamic> json) {
    return FamousDoctorModel(
      name: json['name_ar'],
      from_time: json['from_time'],
      to_time: json['to_time'],
      id: json['id'],
      slot_time: json['slot_time'],
      specialization_ar: json['specialization_ar'] != null?json['specialization_ar'] : null ,
      gnr: json['gnr_m_clinics'] != null
          ? GnrModel.formJson(json['gnr_m_clinics'])
          : null,
    );
  }

  FamousDoctorModel({
    required this.name,
    required this.from_time,
    required this.to_time,
    required this.slot_time,
    required this.specialization_ar,
    required this.id,
    this.gnr,
  });
}

class GnrModel {
  int? id;

  String? name_en;
  String? name_ar;

  GnrModel({
    required this.id,
    required this.name_ar,
    required this.name_en,
  });

  GnrModel.formJson(Map<String, dynamic> json) {
    id = json['id'];
    name_ar = json['name_ar'];
    name_en = json['name_en'];
  }
}
