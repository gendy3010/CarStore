import 'package:flutter/material.dart';

import '../../../../core/Styles/colors.dart';
import '../../../Featured OnBoarding/presentation/views/OnBoarding View.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=> OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.orangeColor,
      body: Center(
        child: Image.asset('assets/images/splash.png',),
      ),
    );
  }
}
