import 'package:flutter/material.dart';
import 'package:mobile_app/core/routing/routes.dart';
import 'package:mobile_app/features/on_boarding_screen/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
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
