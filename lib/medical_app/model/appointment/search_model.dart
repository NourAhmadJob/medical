class BaseSearchModel {
  bool? success ;
  String? error;
  List<SearchModel> baseSearchModel = [];

  BaseSearchModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    error = json['error'];
    json['doctors'] != null ? json['doctors'].forEach(
      (elements) {
        baseSearchModel.add(SearchModel.fromJson(elements));
      },
    ): null;
  }
}

class SearchModel {
  final int id;
  final String name;
  final String special;
  final from;
  final to;
  final String email;

  SearchModel({
    required this.id,
    required this.name,
    required this.special,
    required this.from,
    required this.to,
    required this.email,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      id: json['id'],
      name: json['name_ar'],
      special: json['specialization_ar'],
      from: json['from_time'],
      to: json['to_time'],
      email: json['email'],
    );
  }
}
