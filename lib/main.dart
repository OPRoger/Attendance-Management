import 'package:ateendance_app/Activity/home.dart';
import 'package:flutter/material.dart';

import 'Activity/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => loading(),
        "/home" : (context) => HomeScreen(),
        "/loading" : (context) => loading(),
      },
    );
  }
}
