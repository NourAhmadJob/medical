import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/sign_in/sign_in.dart';
import 'package:medical_u/controller/sign_up_controller.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../widgets/intro_button.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  SignUpController controller1 = Get.put(SignUpController()..getAllCities() );

  var valuechoose;
  DateTime _select_day = DateTime.utc(2040);
  DateTime _fcousedDay = DateTime.now();

  var valuechooseNat;
  var valuechooseBlo;
  var valuechoose5;
  var valuechoose1;
  List listitem = ['male', ' femal'];

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return const Color(0xff667085);
  }

  bool isChecked = false;
  bool passwordVisible2 = true;
  bool passwordVisible1 = true;

  int sexId = 0;

  int cityId = 0;
  var formKey = GlobalKey<FormState>();


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController motherController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController bloodController = TextEditingController();

  Widget build(BuildContext context) {

    valuechoose5 == "Male" ? sexId = 1 : sexId = 2;
    return Container(
      color: const Color(0xff111355),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff111355),
          body: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  height: 0,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 0,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 25, left: 25),
                              child: Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Lorem Ipsum is simply dummy text ",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff667085),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextFormField(

                            controller: nameController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: ' Name',
                            ),
                            onChanged: (value) {},
                            validator: (String  ? value){
                              if(value!.isEmpty){
                                return "Please enter your name ";
                              }
                              return null ;
                            },
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextFormField(
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Please enter your Email ";
                              }
                              return null ;
                            },
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Your Email',
                            ),
                            onChanged: (value) {},
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextFormField(
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Please enter your Password ";
                              }
                              return null ;
                            },
                            controller: passwordController,
                            obscureText: passwordVisible1,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  passwordVisible1 == false
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color(0xffD0D5DD),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible1 = !passwordVisible1;
                                    },
                                  );
                                },
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Password',
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextFormField(
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Please Confirm your Password ";
                              }
                              return null ;
                            },
                            controller: confirmPasswordController,
                            obscureText: passwordVisible2,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  passwordVisible2 == false
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color(0xffD0D5DD),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible2 = !passwordVisible2;
                                    },
                                  );
                                },
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Repeat Password',
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextFormField(
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Please enter your motherName ";
                              }
                              return null ;
                            },
                            controller: motherController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Mother Name',
                            ),
                          ),
                        ),


                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextFormField(
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Please enter your Phone ";
                              }
                              return null ;
                            },
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Mobile number',
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 335,
                          height: 52,
                          child: TextFormField(
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Please enter your Address ";
                              }
                              return null ;
                            },
                            controller: addressController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff1C208F), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffD0D5DD), width: 1.0),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: 'Address',
                            ),
                          ),
                        ),
                        Obx(
                              () => Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: DropdownButton(
                              hint: Text("select Nationality : "),
                              dropdownColor: Colors.cyan,
                              isExpanded: true,
                              value: valuechooseNat,
                              onChanged: (newValue4) {
                                setState(() {
                                  valuechooseNat = newValue4;
                                });
                              },
                              items:
                              controller1.getNat.toList().map((valueitem4) {
                                return DropdownMenuItem(
                                  value: valueitem4,
                                  child: Text("$valueitem4"),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),

                        Container(
                          width: 335,
                          height: 52,
                          child: DropdownButton(
                            isExpanded: true,
                            hint: Text("select Blood : "),
                            dropdownColor: Colors.cyan,
                            icon: Icon(Icons.arrow_drop_down),
                            value: valuechooseBlo,
                            onChanged: (newValue) {
                              setState(() {
                                valuechooseBlo = newValue;
                              });
                            },
                            items:controller1.bloodList.map((valueitem) {
                              return DropdownMenuItem(
                                value: valueitem,
                                child: Text(valueitem),
                              );
                            }).toList(),
                          ),
                        ),

                        SizedBox(
                          height: 20.0,
                        ),
                        // this is drop sex
                        Container(
                          width: 335,
                          height: 52,
                          child: DropdownButton(
                            isExpanded: true,
                            hint: Text("select sex : "),
                            dropdownColor: Colors.cyan,
                            icon: Icon(Icons.arrow_drop_down),
                            value: valuechoose5,
                            onChanged: (newValue) {
                              setState(() {
                                valuechoose5 = newValue;
                              });
                            },
                            items: ["Male", "Female"].map((valueitem) {
                              return DropdownMenuItem(
                                value: valueitem,
                                child: Text(valueitem),
                              );
                            }).toList(),
                          ),
                        ),

                        // this is the drop city
                        Obx(
                          () => Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: DropdownButton(
                              hint: Text("select city : "),
                              dropdownColor: Colors.cyan,
                              isExpanded: true,
                              value: controller1.valuechoose,
                              onChanged: (newValue) {
                                setState(() {
                                  controller1.valuechoose = newValue;
                                //  cityId = controller1.getid(name2: valuechoose);
                                });
                              },
                              items: controller1.list2.toList().map((valueitem5) {
                                return DropdownMenuItem(
                                  value: valueitem5,
                                  child: Text("$valueitem5"),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Text("Pleas Choose your birthDate "),
                        SizedBox(
                          height: 30.0,
                        ),

                        Container(
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset: Offset(5, 6))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 336,
                          child: TableCalendar(
                            daysOfWeekVisible: true,
                            headerVisible: true,
                              headerStyle: HeaderStyle(

                                formatButtonVisible: false,
                              ),
                              calendarStyle: CalendarStyle(

                              ),
                            onDaySelected: (selectedDay, focusedDay) {
                              setState(() {
                                _select_day = selectedDay;
                                _fcousedDay =
                                    focusedDay; // update `_focusedDay` here as well
                              });
                              print(
                                  "${_select_day.month}/${_select_day.day}/${_select_day.year}");
                            },
                            selectedDayPredicate: (DateTime date) {
                              return isSameDay(_select_day, date);
                            },
                            startingDayOfWeek: StartingDayOfWeek.sunday,

                            // calendarFormat: _calendarFormat!,
                            onFormatChanged: (format) {
                              setState(() {
                                // _calendarFormat = format;
                              });
                            },
                            firstDay: DateTime(1950),
                            lastDay: DateTime.now(),
                            focusedDay: DateTime.now(),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        IntroButton(
                          onTap: () {
                            if(formKey.currentState!.validate()){

                            controller1.registerFunction(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              c_password: confirmPasswordController.text,
                              mother_name: motherController.text,
                              mobile: phoneController.text,
                              birth_date: "${_select_day.month}/${_select_day.day}/${_select_day.year}",
                              sex: sexId.toString(),
                              blood: controller1.getBlood(valuechooseBlo).toString(),
                              p_city: controller1.getid(name2: controller1.valuechoose).toString(),
                              nationality: controller1.getNatId(valuechooseNat).toString(),
                              address: addressController.text,
                            );
                          }},
                          title: "Sign Up",
                          height: 56,
                          width: 335,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Expanded(
                              child: Divider(
                                  color: Color(0xffEAECF0),
                                  height: 2,
                                  endIndent: 5,
                                  indent: 15,
                                  thickness: 2),
                            ),
                            Text("Or"),
                            Expanded(
                              child: Divider(
                                  color: Color(0xffEAECF0),
                                  height: 2,
                                  endIndent: 5,
                                  indent: 15,
                                  thickness: 2),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // Container(
                        //   height: 56,
                        //   width: 335,
                        //   decoration: BoxDecoration(
                        //       border: Border.all(
                        //           width: 1, color: Colors.grey.shade300),
                        //       borderRadius:
                        //           const BorderRadius.all(Radius.circular(16))),
                        //   child: Center(
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Image(
                        //             image: AssetImage(
                        //               AppAssets.goolelogo,
                        //             ),
                        //             height: 35),
                        //         const SizedBox(
                        //           width: 10,
                        //         ),
                        //         const Text(
                        //           "Sign in with Google",
                        //           style: TextStyle(
                        //             fontWeight: FontWeight.w700,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 40,
                        // ),
                        GestureDetector(
                          child: RichText(
                            text: const TextSpan(
                              text: "Have an account?",
                              style: TextStyle(
                                  color: Color(0xff344054),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Sign In',
                                  style: TextStyle(
                                      color: Color(0xff1C208F),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/sign_in');
                          },
                          // const SizedBox(
                          //   height: 40,
                          // ),
                        ),
                        SizedBox(
                          height: 30.0,
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
