import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../password_validations.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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

  bool isObscure = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          controller: nameController,
          hintText: "Enter Your Full Name",
          label: "Name",
          validator: (name) {
            if (name == null || name.isEmpty) {
              return "Please Enter Vaild Name";
            }
          },
        ),
        SizedBox(
          height: 40.h,
        ),
        AppTextField(
          controller: emailController,
          hintText: "Enter Your Email",
          label: "Email",
          validator: (email) {
            if (email == null ||
                email.isEmpty ||
                !AppRegex.isEmailValid(email)) {
              return "Please Enter Valid Email";
            }
          },
        ),
        SizedBox(
          height: 40.h,
        ),
        AppTextField(
          isObscure: isObscure,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            child: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          controller: passwordController,
          hintText: "Enter Your Password",
          label: "Password",
          validator: (password) {
            if (password == null || password.isEmpty) {
              return "Please Enter Valid Password";
            }
          },
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
      ],
    );
  }
}
