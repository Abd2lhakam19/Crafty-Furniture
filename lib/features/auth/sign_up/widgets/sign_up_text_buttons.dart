import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/features/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:mobile_app/features/auth/sign_up/cubit/sign_up_states.dart';

import '../../../../core/widgets/app_text_button.dart';

class SignUpTextButtons extends StatelessWidget {
  const SignUpTextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpStates>(
      builder: (context, state) {
        if (state is SignUpError) {
          context.read<SignUpCubit>().showToast(state.errorMessage!);
        } else if (state is SignUpSuccess) {
          context.read<SignUpCubit>().showToast("Account Created Successfully");
        }
        return Column(
          children: [
            state is SignUpLoading
                ? AppTextButton(
                    onPressed: () {},
                    buttonChild: const CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 3,
                    ),
                  )
                : AppTextButton(
                    text: "Sign Up",
                    onPressed: () {
                      if (context
                          .read<SignUpCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        context.read<SignUpCubit>().signUp(context);
                      }
                    },
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
      },
    );
  }
}
