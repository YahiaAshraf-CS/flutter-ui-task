

import 'package:flutter/material.dart';
import 'package:task1_flutter/filters_screen.dart' show FiltersScreen;

import 'package:task1_flutter/sign_up_screen.dart';


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
      // home: HomeScreen(),

     // home: ExploreScreen(),
     // home: BeveragesScreen(),
     // home: AcceptedScreen(),
    //  home:SearchScreen(),
    //home:MainScreen(),
     home: SignUpScreen(),
    
    );
  }
}
