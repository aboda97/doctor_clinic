import 'package:doctor_clinic/features/on_boarding_view_feature/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

////----> GLOBAL VARIABLES ABOUT ONBOARDING
var onBoardingController = PageController();
List<OnBoardingModel> onBoardingItems = [
  OnBoardingModel(
    image: 'assets/images/onBoard1.png',
    title: 'Choose your doctor',
    description:
        'Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.',
  ),
  OnBoardingModel(
    image: 'assets/images/onBoard2.png',
    title: 'Choose date and time',
    description:
        'The application can help you choose the appropriate date and time for you and the selected doctor.',
  ),
  OnBoardingModel(
    image: 'assets/images/onBoard3.png',
    title: 'Communicate with your doctor',
    description:
        'Once you access the profile of doctor you selected you can communicate with him and send any message ',
  ),
];
bool onBoardingIsLast = false;
////----> FINISH THOSE VARIABLES
