import 'package:doctor_clinic/core/utils/app_images_paths.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:doctor_clinic/features/on_boarding_view_feature/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImagesPaths.splashLogo),
            Text(
              'Markaz ElAmal',
              style: AppTextStyles.txtStyle24.copyWith(
                fontFamily: 'Peralta',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
