import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/widgets/app_text_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          controller: emailController,
          hintText: "Enter Your Email",
          label: "Email",
          validator: (email) {
            if (email == null ||
                email.isEmpty ||
                !AppRegex.isEmailValid(email)) {
              return "Please Enter A vaild Email";
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
              return "Please Enter A Vaild Password";
            }
          },
        ),
      ],
    );
  }
}
