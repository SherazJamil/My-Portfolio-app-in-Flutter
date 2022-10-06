import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'Home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const HomeScreen(),
      duration: 3000,
      imageSize: 300,
      imageSrc: "assets/logo.png",
      backgroundColor: Colors.black,
    );
  }
}