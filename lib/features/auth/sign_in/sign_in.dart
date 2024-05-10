import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/features/auth/sign_in/widgets/dont_have_account.dart';
import 'package:mobile_app/features/auth/sign_in/widgets/email_and_password.dart';
import 'package:mobile_app/features/auth/sign_in/widgets/sign_in_buttons.dart';
import 'package:mobile_app/features/auth/sign_in/widgets/top_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopScreen(),
                  SizedBox(
                    height: 32.h,
                  ),
                  const EmailAndPassword(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff101817),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  const SignInButtons(),
                  SizedBox(
                    height: 24.h,
                  ),
                  const DontHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
