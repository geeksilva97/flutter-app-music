import 'package:flutter/material.dart';
import 'package:sales_force/screens/tony/songs.dart';
import 'screens/home/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: Songs(),
    );
  }
}