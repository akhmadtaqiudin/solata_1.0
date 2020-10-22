import 'package:flutter/material.dart';
import 'package:solata/screens/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingScreen extends StatefulWidget {
  static String id = "loading";
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: HomeScreen(),
        title: Text('Selamat Datang Selamat Berbelanja',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0
            )
        ),
        image: Image.asset('images/icon.png'),
        backgroundColor: Colors.teal,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.white
    );
  }
}