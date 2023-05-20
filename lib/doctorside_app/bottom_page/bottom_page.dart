import 'package:flutter/material.dart';
import 'Doctorbottom1.dart';
import 'Doctorbottom2.dart';
import 'Doctorbottom3.dart';
import 'Doctorbottom4.dart';

class DoctorBottom extends StatefulWidget {
  @override
  _DoctorBottomState createState() => _DoctorBottomState();
}

class _DoctorBottomState extends State<DoctorBottom> {
  final List<Widget> _widgetOptions = [
    const Dbottom1(),
    const Dbottom2(),
    const Dbottom3(),
    const Dbottom4(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Patient',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'Dashboard',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff1C208F),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
