import 'package:doctor_clinic/features/on_boarding_view_feature/presentation/on_boarding_global_variable.dart';
import 'package:doctor_clinic/features/on_boarding_view_feature/presentation/widgets/on_boarding_container_items.dart';
import 'package:flutter/material.dart';


class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: onBoardingController,
      itemBuilder: (context, index) => OnBoardingContainerItems(
        onBoardingModel: onBoardingItems[index],
      ),
      onPageChanged: (int index) {
        if (index == onBoardingItems.length - 1) {
          setState(() {
            onBoardingIsLast = true;
          });
        } else {
          setState(() {
            onBoardingIsLast = false;
          });
        }
      },
      itemCount: onBoardingItems.length,
    );
  }
}
