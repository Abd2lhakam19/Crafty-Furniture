import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/core/routing/app_router.dart';
import 'package:mobile_app/core/routing/routes.dart';

class CraftyFurniture extends StatelessWidget {
  const CraftyFurniture({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoarding,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
