import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unit_converter/screens/common/area_screen.dart';
import 'package:unit_converter/screens/common/length_screen.dart';
import 'package:unit_converter/screens/common/volume_screen.dart';
import 'package:unit_converter/screens/common/weight_screen.dart';

class CommonBottomNav extends StatefulWidget {
  @override
  _CommonBottomNavState createState() => _CommonBottomNavState();
}

class _CommonBottomNavState extends State<CommonBottomNav> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      LengthScreen(),
      AreaScreen(),
      VolumeScreen(),
      WeightScreen(),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Unit Converter",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        backgroundColor: Get.theme.accentColor,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Get.isDarkMode
        //           ? Get.changeTheme(ThemeData.light())
        //           : Get.changeTheme(ThemeData.dark());
        //     },
        //     icon: Icon(Icons.nightlight_round),
        //   ),
        //   // IconButton(
        //   //   onPressed: () {
        //   //     Get.changeTheme(ThemeData.light());
        //   //   },
        //   //   icon: Icon(Icons.wb_sunny),
        //   // ),
        // ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Get.theme.accentColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.straighten,
              size: 30,
            ),
            title: Text(
              "Length",
              style: TextStyle(fontSize: 18),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fullscreen,
              size: 30,
            ),
            title: Text(
              "Area",
              style: TextStyle(fontSize: 18),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_in_ar,
              size: 30,
            ),
            title: Text(
              "Volume",
              style: TextStyle(fontSize: 18),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fitness_center,
              size: 30,
            ),
            title: Text(
              "Weight",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
