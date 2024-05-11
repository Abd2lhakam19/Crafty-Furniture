import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/core/routing/app_router.dart';
import 'package:mobile_app/crafty_furniture.dart';
import 'package:mobile_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    CraftyFurniture(
      appRouter: AppRouter(),
    ),
  );
}
