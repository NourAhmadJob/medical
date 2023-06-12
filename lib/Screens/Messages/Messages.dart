import 'package:flutter/material.dart';
import 'package:medical_u/constant/app_asset.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: CircleAvatar(
                    radius: 30, backgroundImage: AssetImage(AppAssets.doctor1)),
              ),
              title: const Text("Dr Gourav Solanaki",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
              subtitle: const Text('Cosmetologist',
                  style: TextStyle(color: Colors.grey)),
              trailing: Container(
                  width: 72,
                  height: 34,
                  decoration: BoxDecoration(
                      color: const Color(0xffD92D20).withOpacity(0.10),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                    child: Text("End Chat",
                        style: TextStyle(
                            color: Color(0xffD92D20),
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  )),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(left: 130, top: 20),
              decoration: const BoxDecoration(
                  color: Color(0xff1C208F),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              height: 52,
              width: 200,
              child: const Center(
                  child: Text(
                "Hello Doctor Shahin Alam",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 260),
              child: Text(
                "07:10 PM",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 220, top: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffEAECF0),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              height: 52,
              width: 105,
              child: const Center(
                  child: Text(
                "Hello there",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 260),
              child: Text(
                "07:10 PM",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 130, top: 20),
              decoration: const BoxDecoration(
                  color: Color(0xff1C208F),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              height: 130,
              width: 193,
              child: const Center(
                  child: Text(
                "  I have a complaint in the \n  lower body, I feel pain \n  sometimes. It hat a bad \n  Things?",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 260),
              child: Text(
                "07:10 AM",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 130, top: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffEAECF0),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              height: 52,
              width: 198,
              child: const Center(
                  child: Text(
                "Have you meet a doctor?",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 260),
              child: Text(
                "07:10 PM",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 140,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff98A2B3), width: 1.5),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.add, color: Color(0xff98A2B3)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 0),
                  width: 238,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xff1C208F), width: 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: 'Write here..',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 5),
                  child: Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: const Icon(Icons.send_sharp, color: Colors.grey),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
