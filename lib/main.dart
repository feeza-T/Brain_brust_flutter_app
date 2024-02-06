<<<<<<< HEAD
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
=======
import 'package:brain_brust/screen/FirstScreen.dart';
import 'package:brain_brust/screen/WelcomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'dart:io';

import 'package:flutter/material.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAX2W_5wMc_5VYkFzv_e9_1lcbfm_RyTpE",
          appId:  "1:728589549186:android:cc7c7ba2b7b00e86cebe9b",
          messagingSenderId:  "728589549186",
          projectId:  "brainbrust-2dc24"),
        )
      : await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'Flutter Demo',
      theme: ThemeData(

       //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

       fontFamily: ('inter'),
        useMaterial3: true,
       // primarySwatch: Colors.deepPurple,
      ),
      home: const FirstScreen(),
    ),
    );
  }

>>>>>>> c28a18f3e325ded2b3e13d20faae94c0e16b8485
