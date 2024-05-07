import 'package:datting_app/views/user/screens/user_login_screen.dart';
import 'package:datting_app/views/utils/settings/app_colors.dart';
import 'package:datting_app/views/utils/settings/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPages extends StatefulWidget {
  final OnBoarding onBoarding;
  const OnBoardingPages({super.key, required this.onBoarding});

  @override
  State<OnBoardingPages> createState() => _OnBoardingPagesState();
}

class _OnBoardingPagesState extends State<OnBoardingPages> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 20),
              child: GestureDetector(
                onTap: () {},
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 50,
            bottom: 10,
          ),
          height: height / 2.2,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                widget.onBoarding.image,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.onBoarding.titleOne,
                style: const TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                widget.onBoarding.titleTwo,
                style: const TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.onBoarding.subTitle,
                style: TextStyle(
                    color: AppColors.whiteGreyColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Get.offAll(() => const UserLoginScreen());
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            height: height / 16,
            width: width,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Text(
              "Next",
              style: TextStyle(
                color: AppColors.lightPinkColor,
                fontWeight: FontWeight.w600,
                fontSize: 21,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
