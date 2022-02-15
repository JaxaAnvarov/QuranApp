import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/bottom_nar_bar_widget.dart';
import 'package:quran_app/screens/home/home_page_view.dart';
import 'package:quran_app/screens/splash.screens.dart';
import 'package:quran_app/core/constants/exports.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreens(),
    );
  }
}
