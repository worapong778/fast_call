import 'package:fast_app/views/splash_screen_ui.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );  
}