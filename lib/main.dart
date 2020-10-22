import 'package:flutter/material.dart';
import 'package:solata/screens/home_screen.dart';
import 'package:solata/screens/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoadingScreen.id,
      routes: {
        LoadingScreen.id: (context) => LoadingScreen(),
        HomeScreen.id: (context) => HomeScreen()
      },
    );
  }
}