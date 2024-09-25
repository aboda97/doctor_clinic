import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String textBtn;
  final Color backgroundColorBtn;
  final Color foregroundColorBtn;
  final TextStyle btnTextStyle;
  const CustomElevatedButton({
    super.key,
    required this.textBtn,
    required this.backgroundColorBtn,
    required this.foregroundColorBtn,
    required this.btnTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColorBtn,
        foregroundColor: foregroundColorBtn,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ), // Rounded corners
        ),
      ),
      child: Text(
        textBtn,
        style: btnTextStyle,
      ),
    );
  }
}
