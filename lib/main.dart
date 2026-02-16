import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping cart',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      darkTheme:  ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.black),
      ),
      home: const HomeScreen(),
    );
  }
}