import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/core/routing/routes.dart';
import 'package:mobile_app/features/auth/password_validations.dart';

import '../../../core/helper/app_regex.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
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
                    SizedBox(
                      height: 32.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Enter Your Full Name",
                        hintStyle: TextStyle(
                          color: const Color(0xff828A89),
                          fontSize: 14.sp,
                        ),
                        label: Text(
                          "Name",
                          style: TextStyle(
                              color: const Color(0xff101817), fontSize: 14.sp),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Enter Your Email",
                        hintStyle: TextStyle(
                          color: const Color(0xff828A89),
                          fontSize: 14.sp,
                        ),
                        label: Text(
                          "Email",
                          style: TextStyle(
                              color: const Color(0xff101817), fontSize: 14.sp),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(
                          color: const Color(0xff828A89),
                          fontSize: 14.sp,
                        ),
                        label: Text(
                          "Password",
                          style: TextStyle(
                              color: const Color(0xff101817), fontSize: 14.sp),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    PasswordValidations(
                      hasLowerCase: hasLowercase,
                      hasUpperCase: hasUppercase,
                      hasSpecialCharacters: hasSpecialCharacters,
                      hasNumber: hasNumber,
                      hasMinLength: hasMinLength,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff0C8A7B),
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(327.w, 56.h),
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 15.h,
                            ),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(327.w, 56.h),
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 15.h,
                            ),
                          )),
                      onPressed: () {},
                      child: Row(
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
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
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
                            Navigator.pushReplacementNamed(
                                context, Routes.signIn);
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
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
