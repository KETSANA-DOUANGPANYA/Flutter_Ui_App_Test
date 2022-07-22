import 'package:app_diary/screens/listScreen.dart';
import 'package:flutter/material.dart';
import 'package:app_diary/screens/Home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white70,
      ),
      home: HomeScreen(),
     /* initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/listDetail': (context) => ListDetail(),
      },*/
    );
  }
}
