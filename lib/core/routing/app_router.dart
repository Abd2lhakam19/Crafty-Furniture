import 'package:flutter/material.dart';
import 'package:mobile_app/core/routing/routes.dart';
import 'package:mobile_app/features/auth/sign_in/sign_in.dart';
import 'package:mobile_app/features/auth/sign_up/sign_up.dart';
import 'package:mobile_app/features/on_boarding_screen/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text("Not Valid Route"),
              ),
            );
          },
        );
    }
  }
}
