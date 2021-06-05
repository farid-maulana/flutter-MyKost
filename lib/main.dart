import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mykost/bottom_navbar.dart';
import 'package:mykost/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Futura',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: MainScreen(),
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
