import 'package:counter_app/views/pages/login_page.dart';
//import 'package:counter_app/views/pages/splash_page.dart';
import 'package:flutter/material.dart';
//import 'package:counter_app/views/pages/homepage.dart';
import 'package:counter_app/views/themes/counter_theme.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PayFlow",
      theme: counterAppTheme,
      home: LoginPage(),
    );
  }
}
