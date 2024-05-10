import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.text,
      this.color,
      this.buttonChild,
      required this.onPressed});
  final String? text;
  final Color? color;
  final Widget? buttonChild;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            color ?? const Color(0xff0C8A7B),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            Size(327.w, 56.h),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 15.h,
            ),
          )),
      onPressed: onPressed,
      child: buttonChild ??
          Text(
            text!,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
    );
  }
}
