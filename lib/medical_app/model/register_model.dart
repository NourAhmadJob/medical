class RegisterModel {
  final bool success;

  //final  message;

   String? user_token;

  RegisterModel({
    required this.success,
   // required this.message,
     this.user_token,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      success: json['success'],
     // message: json['msg'],
      user_token: json['user_token'] ?? "",
    );
  }
}
