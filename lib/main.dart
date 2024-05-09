import 'package:flutter/material.dart';
import 'package:mobile_app/core/routing/app_router.dart';
import 'package:mobile_app/crafty_furniture.dart';

void main() {
  runApp(
    CraftyFurniture(
      appRouter: AppRouter(),
    ),
  );
}
