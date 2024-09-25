import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:doctor_clinic/features/auth_freatures/Login/presentation/widgets/login_container.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 80.0,
                  ),
                  child: Text(
                    'Let\'s Start with sign in',
                    style: AppTextStyles.txtStyle24.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const LoginContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: AppTextStyles.txtStyle16,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Sign up',
                          style: AppTextStyles.txtStyle16.copyWith(
                            color: AppColors.primaryColorBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
