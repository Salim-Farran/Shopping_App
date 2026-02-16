import 'package:flutter/cupertino.dart';

extension NavigationExtension on BuildContext {
  Future<void> push(String routeName, {Object? arguments}) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<void> pushNamedAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false, arguments: arguments);
  }

  Future<void> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  void pop() {
    return Navigator.of(this).pop();
  }
}

class ScreenRoutes
{
  static const homeScreen = '/home-screen';
  static const cartScreen = '/cart-screen';
}