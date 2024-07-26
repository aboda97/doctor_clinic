import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/features/auth_freatures/Login/presentation/views/login_view.dart';
import 'package:doctor_clinic/features/on_boarding_view_feature/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';


class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child:  Text(
            'AR',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginView();
                }),
              );
            },
            child:  const Text(
              'Skip',
            ),
          ),
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}
