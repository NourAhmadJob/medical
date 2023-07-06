import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/vitamins_model.dart';

class Vitamins extends StatefulWidget {
  const Vitamins({Key? key}) : super(key: key);

  @override
  State<Vitamins> createState() => _VitaminsState();
}

class _VitaminsState extends State<Vitamins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 25),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 25,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50, left: 10),
                  child: Text("Vitamins",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 250),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              itemCount: VitaminModalList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          VitaminModalList[index].favorite =
                              VitaminModalList[index].favorite == true
                                  ? false
                                  : true;
                          setState(() {});
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 10, bottom: 10),
                          height: 146,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F4F7),
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              Icon(
                                VitaminModalList[index].favorite == true
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: VitaminModalList[index].favorite == true
                                    ? const Color(0xffF87265)
                                    : const Color(0xff292D32),
                                size: 20,
                              ).paddingOnly(top: 10, left: 90),
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      VitaminModalList[index].image.toString()),
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        VitaminModalList[index].title.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ).marginOnly(left: 15),
                      Text(
                        VitaminModalList[index].subtitle.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ).marginOnly(left: 15, top: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            VitaminModalList[index].price.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ).marginOnly(top: 5),
                          const SizedBox(
                            width: 45,
                          ),
                          const CircleAvatar(
                            backgroundColor: Color(0xff1C208F),
                            maxRadius: 15,
                            child: Icon(Icons.add, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
