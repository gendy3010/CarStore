import 'package:carz/Features/Featured%20Login/presentation/views/Login%20View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required int currentPage,
    required List<Widget> onboardingPages,
    required PageController pageController,
  }) : _currentPage = currentPage, _onboardingPages = onboardingPages, _pageController = pageController;

  final int _currentPage;
  final List<Widget> _onboardingPages;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if (_currentPage < _onboardingPages.length - 1) {
          _pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          // Navigate to the main app screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginView()),
          );

        }

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Main Button
            Container(
              decoration: BoxDecoration(
                color: Colors.lime, // Neon greenish-yellow
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: const Text(
                '    Next    ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey[400], size: 20),
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey[400], size: 20),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.black, size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
