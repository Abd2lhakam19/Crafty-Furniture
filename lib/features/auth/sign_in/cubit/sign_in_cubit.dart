import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobile_app/features/auth/sign_in/cubit/sign_in_states.dart';

import '../../../../core/routing/routes.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit() : super(SignInIntial());
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool SignInWithGoogle = false;
  Future<void> signIn(var context) async {
    emit(SignInLoading());
    final auth = FirebaseAuth.instance;
    try {
      await auth
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) {
        emit(SignInSuccess());
        Navigator.pushNamed(context, Routes.homeScreen);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        emit(SignInError(errorMessage: ""));
      }
    }
    // emit(SignUpIntial());
  }

  signInWithGoogle(var context) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    SignInWithGoogle = true;
    emit(SignInLoading());
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );
        await auth.signInWithCredential(credential).then((value) {
          emit(SignInSuccess());
          Navigator.pushNamed(
            context,
            Routes.homeScreen,
          );
        });
      } else {
        emit(SignInIntial());
      }
    } catch (e) {
      log(e.toString());
      emit(SignInError(errorMessage: e.toString()));
    }
  }

  showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: const Color(0xff0C8A7B),
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0);
  }
}
