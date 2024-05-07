import 'package:datting_app/views/utils/widgets/size_configuration.dart';
import 'package:flutter/material.dart';

class SignupTextField extends StatelessWidget {
  final String title;
  final void Function()? onEditingComplete;
  final bool? obscureText;
  final Widget? suffixIcon;

  const SignupTextField({
    super.key,
    required this.title,
    this.onEditingComplete,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.blockSizeVertical * 6.7,
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
      padding: EdgeInsets.only(
        left: SizeConfig.blockSizeHorizontal * 4,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.centerLeft,
              end: FractionalOffset.centerRight,
              colors: [
                const Color(0xff232323),
                const Color(0xff232323),
                const Color(0xff32262A).withOpacity(0.70)
              ]),
          borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        obscureText: obscureText ?? false,
        onEditingComplete: onEditingComplete,
        style: TextStyle(
            color: const Color(0xff655C5F),
            fontSize: SizeConfig.blockSizeVertical * 2.5),
        cursorColor: const Color(0xff655C5F),
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: title,
            hintStyle: TextStyle(
                color: const Color(0xff655C5F),
                fontSize: SizeConfig.blockSizeVertical * 2.5)),
      ),
    );
  }
}
