import 'package:flutter/material.dart';
import 'package:app_dev_cohort_task1/login.dart';
import 'package:app_dev_cohort_task1/signin.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>Mylogin(),
      'signin': (context)=>MySignIn(),
    },
  ));
}


