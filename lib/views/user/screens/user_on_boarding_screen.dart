import 'package:datting_app/views/user/pages/on_boarding_pages.dart';
import 'package:datting_app/views/utils/settings/app_images.dart';
import 'package:datting_app/views/utils/settings/models/on_boarding_model.dart';
import 'package:datting_app/views/utils/widgets/size_configuration.dart';
import 'package:flutter/material.dart';

class UserOnBoardingScreen extends StatefulWidget {
  const UserOnBoardingScreen({super.key});

  @override
  State<UserOnBoardingScreen> createState() => _UserOnBoardingScreenState();
}

class _UserOnBoardingScreenState extends State<UserOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.appBackground), fit: BoxFit.cover),
        ),
        child: PageView.builder(
          // onPageChanged: (int index) {
          //     setState(() {
          //       initialIndex = index;
          //     });
          //   },
          physics: PageScrollPhysics(),
          //controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) {
            return OnBoardingPages(onBoarding: onBoardingList[index]);
          },
        ),
      ),
    );
  }
}
