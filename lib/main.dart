import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebox/common/di/locator.dart';
import 'package:moviebox/common/manager/navigationManager/navigation_manager.dart';
import 'package:moviebox/common/manager/navigationManager/route_generator.dart';
import 'package:moviebox/presentation/home/homeMovieScreenBloc/home_movie_bloc.dart';
import 'package:moviebox/presentation/home/homeMovieScreenBloc/home_movie_event.dart';

import 'common/manager/navigationManager/destination.dart' as destination;

void main() {
  setUpLocator();
  runApp(
      MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => locator<HomeMovieBloc>()..add(InitState()),
      )
  ], child: MaterialApp(
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: destination.homeMovieScreen,
        navigatorKey: locator<NavigationManager>().navigatorKey,
      ),));
}
