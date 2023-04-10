import 'package:flutter/material.dart';
import 'package:test_app/constants/color.dart';
import 'package:test_app/screens/home_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kBgColor,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
