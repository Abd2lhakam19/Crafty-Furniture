import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/features/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:mobile_app/features/auth/sign_in/cubit/sign_in_states.dart';

import '../../../../core/widgets/app_text_button.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {
        if (state is SignInError) {
          context.read<SignInCubit>().showToast(state.errorMessage);
        } else if (state is SignInSuccess) {
          context.read<SignInCubit>().showToast(" Loged In");
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            state is SignInLoading &&
                    !context.read<SignInCubit>().SignInWithGoogle
                ? AppTextButton(
                    onPressed: () {},
                    buttonChild: const CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 3,
                    ),
                  )
                : AppTextButton(
                    text: "Sign In",
                    onPressed: () {
                      if (context
                          .read<SignInCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        context.read<SignInCubit>().signIn(context);
                      }
                    },
                  ),
            SizedBox(
              height: 16.h,
            ),
            state is SignInLoading &&
                    context.read<SignInCubit>().SignInWithGoogle
                ? AppTextButton(
                    color: Colors.white,
                    onPressed: () {},
                    buttonChild: const CircularProgressIndicator(
                      color: Color(0xff0C8A7B),
                      strokeWidth: 3,
                    ),
                  )
                : AppTextButton(
                    text: "Sign In With Google",
                    onPressed: () {
                      context.read<SignInCubit>().signInWithGoogle(context);
                    },
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
      },
    );
  }
}
