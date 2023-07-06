class ModelSign{
  List<SignUpModel> list2 = [];

  ModelSign.fromJson(Map<String , dynamic> json){

    json['cities'].forEach((e) => list2.add(e));
  }
}

class SignUpModel {
  final int id;
  final String name;

  SignUpModel({
   required this.id,
   required this.name,
  });

  factory SignUpModel.fromJson(Map<String , dynamic> json) {
    return SignUpModel(id: json['id'], name: json['name']);
  }
}
