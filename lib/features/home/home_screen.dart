import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobile_app/core/routing/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ,
        actions: [
          GestureDetector(
            onTap: () async {
              await FirebaseAuth.instance.signOut().then((value) {
                Navigator.pushNamed(context, Routes.signIn);
              });
              await GoogleSignIn().signOut();
            },
            child: const Icon(Icons.logout),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
    );
  }
}
