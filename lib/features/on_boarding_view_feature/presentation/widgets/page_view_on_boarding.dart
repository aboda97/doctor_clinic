import 'package:doctor_clinic/core/utils/app_images_paths.dart';
import 'package:doctor_clinic/features/auth_freatures/Login/presentation/views/login_view.dart';
import 'package:doctor_clinic/features/on_boarding_view_feature/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          OnboardingPageView(
            image:
                AppImagesPaths.onBoardingLogo1, // Replace with your image paths
            title: 'Choose your doctor',
            description:
                'Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.',
          ),
          OnboardingPageView(
            image:
                AppImagesPaths.onBoardingLogo2, // Replace with your image paths
            title: 'Choose date and time',
            description:
                'The application can help you choose the appropriate date and time for you and the selected doctor.',
          ),
          OnboardingPageView(
            image:
                AppImagesPaths.onBoardingLogo3, // Replace with your image paths
            title: 'Communicate with your doctor',
            description:
                'Once you access the profile of doctor you selected you can communicate with him and send any message',
          ),
        ],
      ),
      bottomSheet: _currentIndex == 2
          ? TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 18),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  },
                  child: const Text('Skip'),
                ),
                Row(
                  children: List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.all(4.0),
                      width: _currentIndex == index ? 12.0 : 8.0,
                      height: _currentIndex == index ? 12.0 : 8.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentIndex == index ? Colors.blue : Colors.grey,
                      ),
                    );
                  }),
                ),
                TextButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
    );
  }
}
