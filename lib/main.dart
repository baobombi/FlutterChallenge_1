import "package:flutter/material.dart";
//import 'package:lab_challenge/home_page.dart';
import 'package:lab_challenge/challenge_day1_practice_2.dart'; //class ScreenOne()
import 'package:lab_challenge/challenge_day1_practice_2_2.dart'; //class ScreenTwo()
import 'package:lab_challenge/challenge_day1_practice_2_3.dart'; //class ScreenThree()
import 'package:lab_challenge/challenge_day1_practice_2_4.dart'; //class ScrrenFour()

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenThree(),
      debugShowCheckedModeBanner: false,
    );
  }
}
