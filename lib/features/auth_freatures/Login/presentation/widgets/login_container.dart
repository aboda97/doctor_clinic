import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/core/utils/app_images_paths.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:doctor_clinic/core/widgets/custom_elevated_button.dart';
import 'package:doctor_clinic/features/auth_freatures/Login/presentation/widgets/login_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 230.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        border: Border.all(
          color: AppColors.whiteColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Image.asset(AppImagesPaths.splashLogo),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Doctor Clinic',
              style: AppTextStyles.txtStyle16.copyWith(
                fontFamily: 'Peralta',
                color: AppColors.whiteColor,
              ),
            ),
          ),
          const LoginTextFormField(),
          const SizedBox(
            height: 15.0,
          ),
          const LoginTextFormField(),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            child: CustomElevatedButton(),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.txtStyle16.copyWith(
                  color: AppColors.whiteColor,
                ),
              ))
        ],
      ),
    );
  }
}
