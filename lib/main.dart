import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unit_converter/screens/common/common_bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Unit Converter',
      theme: ThemeData(
        //brightness: Brightness.dark,
        //scaffoldBackgroundColor: Color(0xffF6F5F4),
        //primaryColor: Colors.white,
        accentColor: Color(0xffc78d2a),
      ),
      home: CommonBottomNav(),
    );
  }
}
