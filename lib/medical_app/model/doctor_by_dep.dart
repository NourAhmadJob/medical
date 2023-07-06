class BaseDoctorByDepModel {
  List <DoctorByDepModel> doctor_dep = [] ;

  BaseDoctorByDepModel.fromJson(Map<String, dynamic>json){
    json['doctors'].forEach((elements){
      doctor_dep.add(DoctorByDepModel.fromJson(elements));
    });
  }
}
class DoctorByDepModel {
  final int id;

  final String name1;

  // final String from_time;
  //
  // final String to_time;

  //UserModel? userModel;

  final GnrModel2 model;

  DoctorByDepModel(
      {required this.id,
      required this.name1,
      required this.model,
      // required this.from_time,
      // required this.to_time,
        //this.userModel
    });

  factory DoctorByDepModel.fromJson(Map<String, dynamic> json) {
    return DoctorByDepModel(
      id: json['id'],
      name1: json['name_ar'],
      model: GnrModel2.formJson(json['gnr_m_clinics']),
      // from_time: json['from_time'] ,
      // to_time: json['to_time'],
     // userModel: json['user'] != null ?  UserModel.fromJson(json['user']) : null ,
    );
  }
}

class GnrModel2 {
  final int id;
  final String name_en;
  final String name_ar;

  GnrModel2({
    required this.id,
    required this.name_ar,
    required this.name_en,
  });

  factory GnrModel2.formJson(Map<String, dynamic> json) {
    return GnrModel2(
      id: json['id'],
      name_ar: json['name_ar'],
      name_en: json['name_en'],
    );
  }
}
