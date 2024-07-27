import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:doctor_clinic/features/auth_freatures/Login/presentation/views/login_view.dart';
import 'package:doctor_clinic/features/on_boarding_view_feature/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'AR',
            style: AppTextStyles.txtStyle20.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.whiteColor,
            ),
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
            child: Text(
              'Skip',
              style: AppTextStyles.txtStyle20.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}
