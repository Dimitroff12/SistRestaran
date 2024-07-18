import 'package:flutter/material.dart';
import 'package:stec/page/LoginPag.dart';
//import 'package:stec/page/home.dart';
import 'package:stec/page/login.dart';
//import 'package:stec/page/login.dart';
import 'package:stec/page/title.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'S_DYM',
      initialRoute: '/',
      routes: {
       '/': (context) => title(),
       '/loginPag': (context) => loginPag(),
       '/login': (context) => Login(),
        
        
      },
    );
  }
}