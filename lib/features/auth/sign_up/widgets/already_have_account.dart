import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already Have An Account?",
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
            Navigator.pushReplacementNamed(context, Routes.signIn);
          },
          child: Text(
            "Sign In",
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
