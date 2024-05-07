import 'package:datting_app/views/user/screens/user_on_boarding_screen.dart';
import 'package:datting_app/views/utils/settings/app_colors.dart';
import 'package:datting_app/views/utils/settings/app_images.dart';
import 'package:datting_app/views/utils/widgets/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSplashScreen extends StatefulWidget {
  const UserSplashScreen({super.key});

  @override
  State<UserSplashScreen> createState() => _UserSplashScreenState();
}

class _UserSplashScreenState extends State<UserSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const UserOnBoardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.splashScreenBackground),
          ),
        ),
        child: const Column(
          children: [
            Expanded(
              child: Center(
                child: Image(
                  image: AssetImage(AppImages.splashCenterImage),
                  height: 130,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Datezy",
                  style: TextStyle(
                      color: AppColors.pinkColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child: Text(
                    "Let's Hook up !",
                    style: TextStyle(color: AppColors.pinkColor, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
