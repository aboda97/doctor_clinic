import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/features/splash_view_feature/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Clinic',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          iconTheme: IconThemeData(
            color: AppColors.whiteColor,
          ),
        ),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
