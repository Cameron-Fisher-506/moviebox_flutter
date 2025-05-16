import 'package:flutter/material.dart';

class HomeMovieDetailsScreen extends StatefulWidget {
  const HomeMovieDetailsScreen({super.key});

  @override
  State<HomeMovieDetailsScreen> createState() => _HomeMovieDetailsScreenState();
}

class _HomeMovieDetailsScreenState extends State<HomeMovieDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Details"),));
  }
}