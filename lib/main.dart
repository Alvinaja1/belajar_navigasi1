import 'package:belajar_navigasi1/firstscreen.dart';
import 'package:belajar_navigasi1/fourthscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstscreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/fourth':(context) => fourthscreen()

      },
    );
  }
} 
