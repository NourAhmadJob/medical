class ProfileModel {
  final bool success;
  final String msg;

  DoctorModel? doctorModel;
  PatientModel? patientModel;

  ProfileModel({
    required this.success,
    required this.msg,
    this.doctorModel ,
    this.patientModel,

  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      success: json['success'],
      msg: json['msg'],
    );
  }
}

class DoctorModel {
  final int id;

  final String name_ar;

  final String phoneNumber;

  final UserModel userModel;

  DoctorModel({
    required this.id,
    required this.name_ar,
    required this.phoneNumber,
    required this.userModel,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'],
      name_ar: json['name_ar'],
      phoneNumber: json['phone_number'],
      userModel: UserModel.fromJson(json['user']),
    );
  }
}

class UserModel {
  final int idUser;

  final String name;

  final String email;
  final String status;

  UserModel({
    required this.idUser,
    required this.name,
    required this.email,
    required this.status,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      idUser: json['id'],
      name: json['name'],
      email: json['email'],
      status: json['Status'],
    );
  }
}

class PatientModel {
  final int id;

  final String motherName;

  final String mobile;

  final String birthDate;

  final int city;

  final int nationality;
  final String address;

  final String blood;

  final int sex;
  final UserModel user ;
  PatientModel({
    required this.id,
    required this.blood,
    required this.address,
    required this.motherName,
    required this.mobile,
    required this.birthDate,
    required this.city,
    required this.nationality,
    required this.sex,
    required this.user,
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) {
    return PatientModel(
      id: json['id'],
      motherName: json['mother_name'],
      mobile: json['mobile'],
      birthDate: json['birth_date'],
      city: json['p_city'],
      nationality: json['nationality'],
      sex: json['sex'],
      address: json['address'],
      blood: json['blood'],
      user:  UserModel.fromJson(json['user']),
    );
  }
}
