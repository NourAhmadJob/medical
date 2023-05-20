import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import '../vitamins/vitamins..dart';

class Bottomthree extends StatefulWidget {
  const Bottomthree({Key? key}) : super(key: key);

  @override
  State<Bottomthree> createState() => _BottomthreeState();
}

class _BottomthreeState extends State<Bottomthree> {
  List<String> Exploreby = [
    "  Covid\nEssential",
    "    Skin\ndesieses",
    "Sexual",
    "General",
    "Vitamin",
    "Essential",
  ];

  List images = [
    AppAssets.medicine1,
    AppAssets.medicine2,
    AppAssets.medicine3,
    AppAssets.medicine4,
    AppAssets.medicine5,
    AppAssets.medicine6,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 20),
                  child: Text(
                    "Medicine",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 335,
              height: 52,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search, color: Color(0xff1C208F)),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xff1C208F), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffD0D5DD), width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Search medicine',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text("Medicine categories",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisExtent: 150),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(const Vitamins(),transition: Transition.rightToLeft);
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 104,
                          width: 104,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F4F7),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Image(
                              image: AssetImage(images[index].toString()),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(Exploreby[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 169.49,
              width: 335,
              decoration: BoxDecoration(
                  color: const Color(0xff1C208F),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Get the Best \nMedical Service",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)),
                          SizedBox(height: 10,),
                          Text("Lorem Ipsum is simply dummy \ntext of the printing",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Image(image: AssetImage(AppAssets.medicinedoctor),),
                      )
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
