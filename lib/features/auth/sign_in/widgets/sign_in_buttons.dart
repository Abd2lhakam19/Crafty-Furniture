import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_button.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextButton(
          text: "Sign In",
          onPressed: () {},
        ),
        SizedBox(
          height: 16.h,
        ),
        AppTextButton(
          text: "Sign In With Google",
          onPressed: () {},
          color: Colors.white,
          buttonChild: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png'),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Sign In With Google",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff101817),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
