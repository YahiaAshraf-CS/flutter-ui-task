import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task1_flutter/home_screen.dart';
import 'package:task1_flutter/test_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "yehia ashraf",
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.red)),
      darkTheme: ThemeData(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // home: TestScreen(),
      home: HomeScreen(),
    );
  }
}
