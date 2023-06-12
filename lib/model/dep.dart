class BaseDepartmentModel {
  List <DepartmentModel> departmentModel = [] ;

  BaseDepartmentModel.fromJson(Map<String , dynamic> json){
    json['departments'].forEach((elements) {
      departmentModel.add(DepartmentModel.fromJson(elements));
    });
  }
}
class DepartmentModel {
  final int id;
  final String name_ar;
  final String name_en;

  DepartmentModel({
    required this.id,
    required this.name_ar,
    required this.name_en,
  });

 factory DepartmentModel.fromJson(Map<String , dynamic>json){
    return DepartmentModel(id: json['id'], name_ar: json['name_ar'], name_en: json['name_en']);
  }
}
