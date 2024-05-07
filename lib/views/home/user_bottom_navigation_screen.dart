import 'package:datting_app/views/chat/user_message_screen.dart';
import 'package:datting_app/views/home/user_home_screen.dart';
import 'package:datting_app/views/matching/user_matching_screen.dart';
import 'package:datting_app/views/profile/user_profile_screen.dart';
import 'package:datting_app/views/utils/settings/app_colors.dart';
import 'package:datting_app/views/utils/settings/app_icons.dart';
import 'package:datting_app/views/utils/widgets/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class UserBottomNavigationScreen extends StatefulWidget {
  const UserBottomNavigationScreen({super.key});

  @override
  State<UserBottomNavigationScreen> createState() =>
      _UserBottomNavigationScreenState();
}

class _UserBottomNavigationScreenState
    extends State<UserBottomNavigationScreen> {
  final screen = [
    const UserHomeScreen(),
    const UserMessageScreen(),
    const UserMatchingScreen(),
    const UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        } else {
          SystemNavigator.pop();
        }
        return false;
      },
      child: Scaffold(
          backgroundColor: Colors.black,
          body: screen[selectedIndex],
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: selectedIndex,
            selectedItemColor: AppColors.pinkColor,
            unselectedItemColor: AppColors.grey,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: [
              SalomonBottomBarItem(
                icon: const ImageIcon(
                  AssetImage(AppIcons.homeIcon),
                ),
                title: const Text("Home"),
                selectedColor: AppColors.pinkColor,
              ),
              SalomonBottomBarItem(
                icon: const ImageIcon(
                  AssetImage(AppIcons.messageIcon),
                ),
                title: const Text("Message"),
                selectedColor: AppColors.pinkColor,
              ),
              SalomonBottomBarItem(
                icon: const ImageIcon(
                  AssetImage(AppIcons.matchIcon),
                ),
                title: const Text("Match"),
                selectedColor: AppColors.pinkColor,
              ),
              SalomonBottomBarItem(
                icon: const ImageIcon(
                  AssetImage(AppIcons.profileIcon),
                ),
                title: const Text("Profile"),
                selectedColor: AppColors.pinkColor,
              ),
            ],
          )),
    );
  }
}
