import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/Congratulations/congratulations.dart';
import 'package:medical_u/Screens/bottom_page/bottom_page.dart';
import 'package:medical_u/Screens/verify/verify.dart';
import 'package:medical_u/api_config/api_config.dart';
import 'package:medical_u/api_config/app_const_data.dart';
import 'package:medical_u/constant/shared_constance.dart';
import 'package:medical_u/model/area_model.dart';
import 'package:medical_u/model/register_model.dart';
import 'package:medical_u/model/sign_up_model.dart';
import 'package:quickalert/quickalert.dart';

class SignUpController extends GetxController {
  var valuechoose;

  List<SignUpModel> list = [];
  var list2 = [].obs;
  var list3 = [].obs;
  var listArea = [].obs;

  void getAllCities() {
    Dio().get(citiesApi).then(
      (value) {
        value.data['cities'].forEach(
          (e) => list.add(
            SignUpModel.fromJson(e),
          ),
        );
        for (int i = 0; i < list.length; i++) list2.add(list[i].name);
        update();
      },
    ).catchError(
      (error) {
        print(error);
      },
    );
  }

  List<String> bloodList = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];

  int getBlood(String name) {
    int z = 0;
    switch (name) {
      case "A+":
        z = 1;
        break;
      case "A-":
        z = 2;
        break;
      case "B+":
        z = 3;
        break;
      case "B-":
        z = 4;
        break;
      case "AB+":
        z = 5;
        break;
      case "AB-":
        z = 6;
        break;
      case "O+":
        z = 7;
        break;
      case "O-":
        z = 8;
        break;
    }
    return z;
  }

  RxInt z = 1.obs;

  int getid({required String name2}) {
    list.forEach(
      (element) {
        if (element.name == name2) {
          RxInt id = element.id.obs;
          z = id;
        }
      },
    );
    update();
    return z.value;
  }

  List<AreaModel> listArea5 = [];
  var list5 = [].obs;

  void getAllAreas({
    required int id,
  }) {
    Dio().post(
      areaApi,
      data: {
        "citie": id,
      },
    ).then(
      (value) {
        value.data['areas'].forEach(
          (elements) {
            list5 = [].obs;
            listArea5.add(AreaModel.fromJson(elements));
            for (int i = 0; i < listArea5.length; i++)
              list5.add(listArea5[i].name);
            update();
          },
        );

        print(list5);
        print("get all areas ");

        onClose();
      },
    ).catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  List<String> getNat = ["سوري", "فلسطيني", "مغترب"].obs;

  int getNatId(String nameNat) {
    if (nameNat == "سوري")
      return 1;
    else if (nameNat == "فلسطيني")
      return 2;
    else
      return 3;
  }

  Color appColor = Color(0xff248BD6);
  RegisterModel? registerModel;

  void registerFunction({
    required String name,
    required String email,
    required String password,
    required String c_password,
    required String mother_name,
    required String mobile,
    required String birth_date,
    required String sex,
    required String blood,
    required String p_city,
    required String nationality,
    required String address,
  }) {
    Dio().post(
      sign_up,
      data: {
        "name": name,
        "email": email,
        "password": password,
        "c_password": c_password,
        "mother_name": mother_name,
        "mobile": mobile,
        "birth_date": birth_date,
        "sex": sex,
        "blood": blood,
        "p_city": p_city,
        "nationality": nationality,
        "address": address,
      },
    ).then((value) {
      print("hello 5");
      registerModel = RegisterModel.fromJson(value.data);
      print("hello 90");
      if(registerModel!.success == true){
        SharedPref.saveData(key: "token", value: value.data['user_token']).then(
              (value) {
                tokenData = SharedPref.getData(key: "token").toString();

                Fluttertoast.showToast(
                    msg: "Success",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: appColor,
                    textColor: Colors.white,
                    fontSize: 16.0);

                Get.off(() => Veirfy());
              }

        ).catchError(
              (error) {
            print("hello 5");
            print(error.toString());
          },
        );
      }
      else {
        Fluttertoast.showToast(
            msg: value.data['msg'].toString(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }).catchError((error){
      print("hello 300");
      print(error.toString());
    });
  }

  late Dio dio = Dio();

  void getVerfiy({required code, context}) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio.post(
      verfiApi,
      data: {
        "code": code,
      },
    ).then(
      (value) {
        print(value.data);
        if (value.data['success'] == true) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.success,
            text: "Success Verify",
            autoCloseDuration: const Duration(seconds: 2),
          );
          Get.offAll(() => Congratulations());
        } else {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            text: 'Verification Code is unCorrect',
            autoCloseDuration: const Duration(seconds: 2),
          );
        }
      },
    ).catchError(
      (error) {
        print("hello 20");
        print(error.toString());
      },
    );
  }

  void getResendCode(context) {
    dio.get(resendApi).then(
      (value) {
        print(value.data);
        if (value.data['success'] == true) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.success,
            text: "Code Resend Successfully",
            autoCloseDuration: const Duration(seconds: 2),
          );
        } else {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            text: 'Some Thing went wrong ... please try again ',
            autoCloseDuration: const Duration(seconds: 2),
          );
        }
      },
    ).catchError(
      (error) {},
    );
  }
}
