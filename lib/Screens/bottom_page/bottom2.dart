import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_asset.dart';
import '../Search_result/Search_result.dart';

class Bottomtwo extends StatefulWidget {
  const Bottomtwo({Key? key}) : super(key: key);

  @override
  State<Bottomtwo> createState() => _BottomtwoState();
}

class _BottomtwoState extends State<Bottomtwo>
    with SingleTickerProviderStateMixin {

  List availablename = [
    "Dr Shahin Alam",
    "Dr Tania Alam",
  ];

  List<String> Exploreby = [
    "Eye",
    "Heart",
    "Bone",
    "Teeth",
    "Headache",
    "General",
  ];

  List<String> images = [
    AppAssets.eyesp,
    AppAssets.Heart,
    AppAssets.bone,
    AppAssets.teeth,
    AppAssets.headache,
    AppAssets.stethoscope,
  ];

  List availablesubname = [
    "Cardiologist",
    "Endocrinology",
  ];

  List<String> popular = [
    AppAssets.doctor1,
    AppAssets.doctor3,
  ];

  List<String> Title = [
    "Feel Less Stressed",
    "Calm Mind calm Heart",
    "Nature Sounds",
    "Relaxing Sounds",
    "Exploring the Mind",
    "Resting the Brain",
    "Work Life Balance",
  ];

  List<String> SubTitle = [
    "Stress reeducation from work",
    "Train the mind to be calm like water",
    "Nature and animal sounds",
    "Music that soothes the heart & mind",
    "Find your deepest thoughts",
    "Take a break from the fatigue of work",
    "The Great Power of Mind",
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

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
                    "Doctors",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 335,
              height: 52,
              child: TextField(
                onTap: () {
                  Get.to(const Searchresult(),transition: Transition.rightToLeft);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon:
                      const Icon(Icons.search, color: Color(0xff1C208F)),
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
                  hintText: 'Search doctor...',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text("Available Doctors",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      2,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 5),
                            child: Container(
                                height: 180,
                                width: 160,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xffD0D5DD)),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          maxRadius: 30,
                                          backgroundImage:
                                              AssetImage(popular[index]),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 40,left: 45
                                          ),
                                          child: Icon(Icons.circle,
                                              color: Color(0xff12B76A),
                                              size: 16),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(availablename[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(availablesubname[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.star,
                                            color: Color(0xff36C8FF)),
                                        Text("4.8",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14)),
                                      ],
                                    ),
                                  ],
                                )),
                          )),
                ),
              ),
            ),
            _tabSection(context),
          ],
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 52,
            width: 335,
            decoration: BoxDecoration(
                color: const Color(0xffEEEEFF),
                borderRadius: BorderRadius.circular(16)),
            child: TabBar(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                unselectedLabelColor: const Color(0xff8E90C7),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                tabs: const [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Categories",
                          style: TextStyle(
                            color: Color(0xff8E90C7),
                          )),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Symptoms",
                          style: TextStyle(
                            color: Color(0xff8E90C7),
                          )),
                    ),
                  ),
                ]),
          ),
          Container(
            height: 300,
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 100,
                            width: 104,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: const Color(0xffEEEEFF)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: Image(
                                        image: AssetImage(images[index]),
                                        width: 50,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                      child: Text(Exploreby[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 100,
                            width: 104,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: const Color(0xffEEEEFF)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: Image(
                                        image: AssetImage(images[index]),
                                        width: 50,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                      child: Text(Exploreby[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
