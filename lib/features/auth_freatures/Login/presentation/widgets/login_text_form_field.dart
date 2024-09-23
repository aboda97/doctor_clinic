import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String labelText;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final TextStyle labelTextStyle;
  final Color borderColor;
  final String? Function(String?)? validator;
  const LoginTextFormField({
    super.key,
    required this.keyboardType,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconColor,
    this.suffixIconColor,
    required this.labelTextStyle,
    required this.borderColor,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
          ),
          prefixIconColor: prefixIconColor,
          suffixIcon: Icon(
            suffixIcon,
          ),
          suffixIconColor: suffixIconColor,
          labelText: labelText,
          labelStyle: labelTextStyle,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(
                14.0,
              ),
            ), // White border when not focused
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
            borderRadius: const BorderRadius.all(
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
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                14.0,
              ),
            ), // Red border on focus with error
          ),
        ),
        validator: validator,
      ),
    );
  }
}
