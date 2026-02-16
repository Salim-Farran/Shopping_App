import 'package:flutter/material.dart';
import 'package:shopping_app/screens/cart_screen.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/theme/app_themes.dart';

import 'extensions/navigation_extension.dart';

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
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const HomeScreen(),
      routes: <String, WidgetBuilder>{
        ScreenRoutes.cartScreen: (context) => const CartScreen(),
      },
    );
  }
}