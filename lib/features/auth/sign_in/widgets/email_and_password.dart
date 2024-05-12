import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/features/auth/sign_in/cubit/sign_in_cubit.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/widgets/app_text_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignInCubit>().formKey,
      child: Column(
        children: [
          AppTextField(
            controller: context.read<SignInCubit>().emailController,
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
            controller: context.read<SignInCubit>().passwordController,
            hintText: "Enter Your Password",
            label: "Password",
            validator: (password) {
              if (password == null || password.isEmpty) {
                return "Please Enter A Vaild Password";
              }
            },
          ),
        ],
      ),
    );
  }
}
