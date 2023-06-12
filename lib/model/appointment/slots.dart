class SlotsModel {
  final int id;

  final from;

  SlotsModel({required this.id, required this.from});

  factory SlotsModel.fromJson(Map<String, dynamic> json) {
    return SlotsModel(
      id: json['id'],
      from: json['from'],
    );
  }
}
