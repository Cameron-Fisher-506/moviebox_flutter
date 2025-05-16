import 'package:flutter/material.dart';
import 'package:moviebox/common/manager/navigationManager/destination.dart' as destination;

import '../../../presentation/home/home_movie_details_screen.dart';
import '../../../presentation/home/home_movie_screen.dart';
import '../../di/home_module.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case destination.homeMovieScreen:
        return MaterialPageRoute(builder: (_) {
          setUpHomeModule();
          return HomeMovieScreen();
        });
      case destination.homeMovieDetailsScreen:
        return MaterialPageRoute(builder: (_) {
          return HomeMovieDetailsScreen();
        });
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text("No path for ${routeSettings.name}"),)
        ));
    }
  }
}
