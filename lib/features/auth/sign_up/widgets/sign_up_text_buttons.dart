import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_button.dart';

class SignUpTextButtons extends StatelessWidget {
  const SignUpTextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextButton(
          text: "Sign Up",
          onPressed: () {},
        ),
        SizedBox(
          height: 16.h,
        ),
        AppTextButton(
          buttonChild: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png'),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Sign Up With Google",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff101817),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
