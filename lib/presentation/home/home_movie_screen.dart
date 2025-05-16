import 'package:flutter/material.dart';

class HomeMovieScreen extends StatefulWidget {
  const HomeMovieScreen({super.key});

  @override
  State<HomeMovieScreen> createState() => _HomeMovieScreenState();
}

class _HomeMovieScreenState extends State<HomeMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Home"),));
  }
}