import 'package:flutter/material.dart';
import 'package:manna/pages/add-info.dart';
import 'package:manna/pages/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/person': (context) => AddInformationPage(),
      },
    );
  }
}
