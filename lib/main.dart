import 'package:flutter/material.dart';
import 'package:new_flutter_project/bmi_screen.dart';
import 'package:new_flutter_project/counter_screen.dart';
import 'package:new_flutter_project/home_screen.dart';
import 'package:new_flutter_project/users_model.dart';

import 'login_screen.dart';
import 'massenger.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: BMI_calculator(),
   );
  }






  }

