import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krishi_link/screens/screen_background.dart';
import 'package:krishi_link/screens/signin_screen.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});
  static const String name='/';

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    _moveTonextScreen();
  }

  Future<void> _moveTonextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, SigninScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assates/images/krishi.png", height: 150),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
