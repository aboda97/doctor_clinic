import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.email_outlined,
          ),
          prefixIconColor: AppColors.whiteColor,
          labelText: 'Email',
          labelStyle: AppTextStyles.txtStyle16.copyWith(
            color: AppColors.whiteColor,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                14.0,
              ),
            ), // White border when not focused
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                14.0,
              ),
            ), // White border when focused
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                14.0,
              ),
            ), // Red border on error
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                14.0,
              ),
            ), // Red border on focus with error
          ),
        ),
      ),
    );
  }
}
