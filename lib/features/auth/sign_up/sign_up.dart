import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/features/auth/sign_up/widgets/already_have_account.dart';
import 'package:mobile_app/features/auth/sign_up/widgets/email_and_password.dart';
import 'package:mobile_app/features/auth/sign_up/widgets/top_screen.dart';

import 'widgets/sign_up_text_buttons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopSignUpScreen(),
                SizedBox(
                  height: 32.h,
                ),
                const SignUpForm(),
                SizedBox(
                  height: 24.h,
                ),
                const SignUpTextButtons(),
                SizedBox(
                  height: 24.h,
                ),
                const AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
