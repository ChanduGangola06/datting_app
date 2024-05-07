import 'package:datting_app/views/home/user_bottom_navigation_screen.dart';
import 'package:datting_app/views/utils/settings/app_colors.dart';
import 'package:datting_app/views/utils/settings/app_icons.dart';
import 'package:datting_app/views/utils/settings/app_images.dart';
import 'package:datting_app/views/utils/widgets/common_login_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (kDebugMode) {
      print("Build");
    }

    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.loginModel),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  await Fluttertoast.showToast(
                    msg: "Please Wait...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.SNACKBAR,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black.withOpacity(0.35),
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                child: const CommonLoginButton(
                  icon: AppIcons.googleIcon,
                  title: "Login with gmail",
                  padding: 8,
                ),
              ),
              quickLogin(context),
              const SizedBox(height: 20),
              const Text(
                "By Signing up you will be agree to our",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Terms & Condition",
                    style: TextStyle(
                        color: AppColors.pinkColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    " and ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Privacy Policy",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: AppColors.pinkColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  CommonLoginButton quickLogin(BuildContext context) {
    return CommonLoginButton(
      onTap: () async {
        await Fluttertoast.showToast(
          msg: "Please Wait...",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black.withOpacity(0.35),
          textColor: Colors.white,
          fontSize: 16.0,
        );
        Get.off(() => const UserBottomNavigationScreen());
      },
      icon: AppIcons.rocketIcon,
      title: "Quick Login",
      padding: 5,
    );
  }
}
