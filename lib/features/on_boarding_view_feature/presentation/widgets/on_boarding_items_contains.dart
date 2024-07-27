import 'package:doctor_clinic/core/utils/app_colors.dart';
import 'package:doctor_clinic/core/utils/app_text_styles.dart';
import 'package:doctor_clinic/features/auth_freatures/Login/presentation/views/login_view.dart';
import 'package:doctor_clinic/features/on_boarding_view_feature/data/models/on_boarding_model.dart';
import 'package:doctor_clinic/features/on_boarding_view_feature/presentation/on_boarding_global_variable.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingItemsContains extends StatelessWidget {
  const OnBoardingItemsContains({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Image.asset(
              onBoardingModel.image,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
                vertical: size.height * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(onBoardingModel.title,
                      style: AppTextStyles.txtStyle24.copyWith()),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(onBoardingModel.description,
                      style: AppTextStyles.txtStyle18.copyWith()),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                          controller: onBoardingController,
                          effect: const ExpandingDotsEffect(
                            dotColor: AppColors.secondaryColor,
                            activeDotColor: AppColors.primaryColor,
                            dotHeight: 12.0,
                            dotWidth: 10.0,
                            spacing: 5.0,
                            expansionFactor: 4.0,
                          ),
                          count: onBoardingItems.length),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          onPressed: () {
                            if (onBoardingIsLast) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return const LoginView();
                                }),
                              );
                            }
                            onBoardingController.nextPage(
                                duration: const Duration(milliseconds: 350),
                                curve: Curves.easeIn);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 32,
                          ),
                          label: const Text(
                            'Next',
                            style: AppTextStyles.txtStyle20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
