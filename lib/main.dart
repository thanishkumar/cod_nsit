import 'package:cod_nsit/Screens/feeds_page.dart';
import 'package:cod_nsit/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:cod_nsit/Screens/conceptScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConceptPage(),
    );
  }
}

