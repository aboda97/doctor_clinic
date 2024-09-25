import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:doctor_clinic/core/widgets/custom_elevated_button.dart';
import 'package:doctor_clinic/features/auth_freatures/Login/presentation/widgets/login_text_form_field.dart';
import 'package:flutter/material.dart';

void forgetPassModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          top: 45.0,
          bottom: 45.0,
          left: 25.0,
        ),
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forget Password',
              style: AppTextStyles.txtStyle24.copyWith(
                color: AppColors.primaryColorBold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Enter your email for verification process we will send 5 digits code to your email',
              style: AppTextStyles.txtStyle14.copyWith(
                color: AppColors.primaryColorBold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Email',
              style: AppTextStyles.txtStyle24.copyWith(
                color: AppColors.primaryColorBold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                top: 15.0,
              ),
              child: LoginTextFormField(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Email',
                labelTextStyle: AppTextStyles.txtStyle14.copyWith(
                  color: AppColors.primaryColorBold,
                ),
                borderColor: AppColors.primaryColorBold,
                prefixIcon: Icons.email_outlined,
                prefixIconColor: AppColors.primaryColorBold,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20.0, top: 40.0),
              width: MediaQuery.of(context).size.width,
              child: CustomElevatedButton(
                textBtn: 'Continue',
                backgroundColorBtn: AppColors.primaryColor,
                foregroundColorBtn: AppColors.whiteColor,
                btnTextStyle: AppTextStyles.txtStyle24.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
