import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/Styles/styles.dart';
import '../widgets/NextButton.dart';
import '../widgets/onBoarding Page.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final List<Widget> _onboardingPages = [
    OnboardingPage(
      image:'assets/images/backGround.jpg',
      title: 'Locate the Destination',
      description: 'Your destination is as your fingertips.Open App& enter where you want to go',
    ),
    OnboardingPage(
      image:'assets/images/backGround2.jpg',
      title: 'Select Your Root',
      description: 'get quick access to frequent locations and save them as a fovorites',
    ),
    OnboardingPage(
      image:'assets/images/backGround.jpg',
      title: 'Locate the Destination',
      description: 'Your destination is as your fingertips.Open App& enter where you want to go',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: _onboardingPages,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230,left: 15),
            child: SmoothPageIndicator(
                controller: _pageController,
                count: _onboardingPages.length,
                effect: ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.lime,
                  dotWidth: 15,
                  dotHeight: 7,
                  expansionFactor: 4,
                  spacing: 3,
                ),

            ),
          ),
          Positioned(
            bottom: 460,
            right: 200,
            left: 20,
            child:NextButton(
                currentPage: _currentPage,
                onboardingPages: _onboardingPages,
                pageController: _pageController),
          ),
        ],
      ),
    );
  }
}


// Onboarding Page Widget

// Home Screen (After Onboarding)
