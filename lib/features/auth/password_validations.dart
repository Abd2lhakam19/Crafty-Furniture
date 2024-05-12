import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        SizedBox(
          height: 3.h,
        ),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        SizedBox(
          height: 3.h,
        ),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        SizedBox(
          height: 3.h,
        ),
        buildValidationRow('At least 1 number', hasNumber),
        SizedBox(
          height: 3.h,
        ),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Color(0xff0C8A7B),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: hasValidated
                ? const Color(0xff828A89)
                : const Color(0xff101817),
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: const Color(0xff0C8A7B),
            decorationThickness: 2,
          ),
        )
      ],
    );
  }
}
