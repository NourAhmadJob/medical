import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/api_config/api_config.dart';
import 'package:medical_u/api_config/app_const_data.dart';
import 'package:medical_u/model/appointment/search_model.dart';
import 'package:medical_u/model/dep.dart';
import 'package:medical_u/model/doctor_by_dep.dart';
import 'package:medical_u/model/famous_model.dart';
import 'package:medical_u/model/profile.dart';
import 'package:medical_u/model/upComing_model.dart';
import 'package:quickalert/quickalert.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    AllDepartment();
    getFamousDoctor();
    getProfile();
    getUpComingAppointment();
    super.onInit();
  }

  int selectedIndex = 0;
  onTap(index){
    selectedIndex = index;
    update();
  }
  Widget getIcon(String name) {
    switch (name) {
      case "0":
        return Icon(Icons.circle, color: Colors.orangeAccent, size: 20.0,);
      case "1":
        return Icon(Icons.circle, color: Colors.green, size: 20.0,);

    }
     return Icon(Icons.circle, color: Colors.red, size: 20.0,);
  }

  late Dio dio = Dio();

  // DepModel First things in My Screen
  List <DepartmentModel> departmentModel = [] ;


  List <DepartmentModel> AllDepartment() {
    dio.options.headers = {
      "Authorization": "Bearer $tokenData",
    };

    dio.get(depApi).then(
      (value) {
        departmentModel = [];
        value.data['departments'].forEach((elements){
          departmentModel.add(DepartmentModel.fromJson(elements));
          update();
        });
        update();
      },
    ).catchError(
      (error) {
        print(error.toString());
      },
    );
    return departmentModel ;
  }

  // profileModel
  ProfileModel? profileModel;

  void getProfile() {
    dio.options.headers = {
      "Authorization": "Bearer $tokenData",
    };
    dio.get(profileApi).then(
      (value) {
        profileModel = ProfileModel.fromJson(value.data);
        value.data['msg'] == "doctor"
            ? profileModel!.doctorModel =
                DoctorModel.fromJson(value.data['doctor'])
            : profileModel!.patientModel =
                PatientModel.fromJson(value.data['patient']);
      },
    ).catchError((error) {
      print(error.toString());
    });
    update();
  }

  BaseFamousDoctorModel? baseFamousDoctorModel;
  List <FamousDoctorModel> famo = [];

  List <FamousDoctorModel> getFamousDoctor() {
    dio.options.headers = {
      "Authorization": "Bearer $tokenData",
    };

    dio.get(famousApi).then(
      (value) {
        famo = [];
         value.data['famous doctors'].forEach((elements){
           famo.add(FamousDoctorModel.fromJson(elements));
           update();
         });
        update();
      },
    ).catchError(
      (error) {
        print(error.toString());
      },
    );
    return famo ;
  }

  BaseDoctorByDepModel? baseDoctorByDepModel;
  bool isLoading = false;

  void getAllDoctorByDep({
    required int id,
  }) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio.post(
      doctorByDepApi,
      data: {
        "clinic": id,
      },
    ).then(
      (value) {
        print("Hello 1");
        isLoading = true;
        baseDoctorByDepModel = BaseDoctorByDepModel.fromJson(value.data);
        isLoading = false;
        update();
      },
    ).catchError(
      (error) {
        print("hello 36");
        print(error.toString());
      },
    );
    update();
  }

  // function get upComingAppointment
  List<UpConmingAppointment> UpComingList = [];

  List<UpConmingAppointment> getUpComingAppointment() {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio.get(upComingAppointmentApi).then(
      (value) {
        UpComingList = [];
        value.data['upcoming_Appointment'].forEach((elements){
          UpComingList.add(UpConmingAppointment.fromJson(elements));
          update();
        });
       update();
      },

    ).catchError(
      (error) {
        print(error.toString());
      },
    );
    return UpComingList ;
  }
   BaseSearchModel? searchModel ;
  void search({
    required String text,
  }) {
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    dio.post(
          searchApi,
          data: {
            "val": text,
          },
        )
        .then(
          (value) {

            searchModel = BaseSearchModel.fromJson(value.data);
            update();
          },
        )
        .catchError(
          (error) {

            print(error.toString());
          },
        );
    update();
  }

  
  void cancelAppointment({
  required int id ,
    context,
}){
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };
    
    dio.post(cancelApi ,data: {
        "appointment": id ,
    }, ).then((value) {
      print("hello 1");
      print(value.data);
      if(value.data['success'] == true){
        QuickAlert.show(
            context: context,
            type: QuickAlertType.success,
            text: 'Cancelled Successfully ',
            autoCloseDuration: const Duration(seconds: 2));
        update();
      }
      else {
        QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            text: "Error ... please try again ",
            autoCloseDuration: const Duration(seconds: 2));
      }
    });
  }
  void deleteAppointment({
  required int id ,
    context,
}){
    dio.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $tokenData",
    };

    dio.post(deleteApi ,data: {
        "appointment": id ,
    }, ).then((value) {
      print("hello 1");
      print(value.data);
      if(value.data['success'] == true){
        QuickAlert.show(
            context: context,
            type: QuickAlertType.success,
            text: 'Delete Successfully ',
            autoCloseDuration: const Duration(seconds: 2));
        update();
      }
      else {
        QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            text: "Error ... please try again ",
            autoCloseDuration: const Duration(seconds: 2));
      }
    });
  }

}
