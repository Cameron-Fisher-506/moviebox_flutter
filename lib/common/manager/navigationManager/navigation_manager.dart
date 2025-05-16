import 'package:flutter/widgets.dart';

class NavigationManager {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateToReplaceTop(String routeName) async {
    final currentState = navigatorKey.currentState;
    if (currentState != null) {
      return await currentState.pushReplacementNamed(routeName);
    }
    return null;
  }

  Future<dynamic> navigateTo(String routeName) async {
    final currentState = navigatorKey.currentState;
    if (currentState != null) {
      return await currentState.pushNamed(routeName);
    }
    return null;
  }

  void navigateUp() {
    final currentState = navigatorKey.currentState;
    if (currentState != null) {
      return currentState.pop();
    }
  }
}