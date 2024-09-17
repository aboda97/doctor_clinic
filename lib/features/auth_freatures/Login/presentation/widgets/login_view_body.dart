import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 21.0,
                vertical: 68.0,
              ),
              child: Text(
                'Let\'s start with sign in',
                style: AppTextStyles.txtStyle24.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
                color: AppColors.whiteColor,
              ),
              child: Stack(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.whiteColor,
                        width: 4.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: AppTextStyles.txtStyle16,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: AppTextStyles.txtStyle16.copyWith(
                                color: AppColors.primaryColorBold,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
