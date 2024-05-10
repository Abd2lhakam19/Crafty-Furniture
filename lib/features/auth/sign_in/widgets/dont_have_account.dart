import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have An Account?",
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff828A89),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.signUp);
          },
          child: Text(
            "Sign Up For Free",
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff101817),
            ),
          ),
        ),
      ],
    );
  }
}
