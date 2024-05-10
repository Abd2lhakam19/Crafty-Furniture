import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 100.w,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            height: 40.h,
            width: 40.w,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.arrow_back_outlined),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
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
                  "Welcome Back! Please Enter Your Details.",
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
                  height: 16.h,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: const Color(0xff0C8A7B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: const BorderSide(
                            width: 0.4,
                          )),
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text(
                      "Remember For 30 Days",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff828a89),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff101817),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 15.h,
                        ),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Sign In",
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
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have An Account?",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff828A89),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "Sign Up For Free",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff101817),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
