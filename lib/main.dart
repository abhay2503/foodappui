import 'package:flutter/material.dart';
import 'package:foodapp/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      initialRoute: 'HomePage',
      routes: {
        'HomePage':(context)=>HomePage(),
      },
    );
  }
}
