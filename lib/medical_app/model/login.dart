class LoginModel {
  final String message;

  final bool success;

  String? user_token;

  final String error;

  LoginModel(
      {required this.message,
      required this.success,
      required this.error,
      this.user_token = "" ?? ""});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
        message : json['msg'],
        success : json['success'],
        error : json['error'],
        user_token: json['user_token'] ?? "",
    );
  }
}
