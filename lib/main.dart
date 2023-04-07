import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_1/view/mainscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Trace Java',
      //theme: ThemeData(scaffoldBackgroundColor: Colors.lightBlueAccent),
      home: const SplashScreen(),
      );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (content) => const MainScreen())));
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
        Text("Welcome To",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
        Text("Trace Java",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
        CircularProgressIndicator(color: Colors.blue,)]
        ),
      )
    );
  }
}