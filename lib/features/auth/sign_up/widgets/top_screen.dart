import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSignUpScreen extends StatelessWidget {
  const TopSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create Account",
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff101817),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          "Let's Create Account Togther",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff828A89),
          ),
        ),
      ],
    );
  }
}
