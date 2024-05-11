import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_app/core/routing/routes.dart';
import 'package:mobile_app/features/auth/sign_up/cubit/sign_up_states.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpIntial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> signUp(var context) async {
    emit(SignUpLoading());
    final auth = FirebaseAuth.instance;
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) {
        emit(SignUpSuccess());
        Navigator.pushNamed(context, Routes.homeScreen);
      });
    } on FirebaseAuthException catch (e) {
      emit(SignUpError(errorMessage: e.code));
    }
    // emit(SignUpIntial());
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
