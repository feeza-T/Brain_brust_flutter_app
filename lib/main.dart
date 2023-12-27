import 'package:brain_brust/screen/QuizIntro.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:flutter/material.dart';
//import 'package:brain_brust/screen/login.dart';
import 'package:brain_brust/screen/WelcomeScreen.dart';
import 'package:brain_brust/screen/Home.dart';
//import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'Flutter Demo',
      theme: ThemeData(

       //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

       fontFamily: ('inter'),
        useMaterial3: true,
       // primarySwatch: Colors.deepPurple,
      ),
      home: const WelcomeScreen(),
    );
  }
}

//QuizIntro(),
//WelcomeScreen(),