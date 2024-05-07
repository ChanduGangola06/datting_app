import 'package:datting_app/views/utils/settings/app_colors.dart';
import 'package:flutter/material.dart';

class LogInTextFiled extends StatelessWidget {
  final String title;
  final String icon;
  final TextEditingController? controller;

  const LogInTextFiled({
    super.key,
    required this.title,
    required this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height / 14,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.only(
        left: 15,
      ),
      decoration: BoxDecoration(
          color: const Color(0xff9F7C88).withOpacity(0.75),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          SizedBox(
            width: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  icon,
                  width: 18,
                ),
                SizedBox(
                  height: height / 25,
                  width: 2,
                  child: VerticalDivider(
                    color: AppColors.lightPinkColor.withOpacity(0.4),
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: width / 1.4,
            child: TextFormField(
              controller: controller,
              cursorColor: AppColors.lightPinkColor,
              style: const TextStyle(
                  color: AppColors.lightPinkColor, fontSize: 18),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: title,
                  hintStyle: const TextStyle(
                      fontSize: 18, color: AppColors.lightPinkColor),
                  contentPadding: EdgeInsets.zero
                  // contentPadding: EdgeInsets.only(
                  //     bottom: SizeConfig.blockSizeVertical * 1),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
