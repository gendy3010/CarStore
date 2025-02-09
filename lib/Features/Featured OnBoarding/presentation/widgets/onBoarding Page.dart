import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Styles/styles.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(image,
                  fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(title,
                        style: Style.textStyle28,),
                    ),
                  ),
                  Center(
                    child: Text(
                      description,
                      style: Style.textStyle16,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
