import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:medical_u/core/utils/api_config/api_config.dart';
import 'package:medical_u/core/utils/api_config/app_const_data.dart';
import 'package:medical_u/core/utils/constant/shared_constance.dart';
import 'package:medical_u/medical_app/Screens/bottom_page/bottom_page.dart';
import 'package:medical_u/medical_app/model/login.dart';
class SignInController extends GetxController {
  Color appColor = Color(0xff248BD6);


  LoginModel? loginModel;

  void SignIn({
    required String email,
    required String password,
  }) {
    Dio().post(
      login_in,
      data: {
        "email": email,
        "password": password,
      },
    ).then((value) {
      print("Hello 1");
      loginModel = LoginModel.fromJson(value.data);
      print("Hello 2");
      SharedPref.saveData(key: "token", value: loginModel!.user_token!)
          .then(
            (value) {
              tokenData = SharedPref.getData(key: "token").toString();
              if (loginModel!.success == true) {
                Fluttertoast.showToast(
                    msg: loginModel!.message,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: appColor,
                    textColor: Colors.white,
                    fontSize: 16.0);

                  print(tokenData);
                  print("Get token succes");
                Get.off(() => HomePage() );
              } else {
                Fluttertoast.showToast(
                    msg: loginModel!.message,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
            },
          )
          .catchError(
            (error) {
              print(error.toString());
            },
          );
    }).catchError((error) {
      print("Hello 200");
      print(error.toString());
    });
  }
}
