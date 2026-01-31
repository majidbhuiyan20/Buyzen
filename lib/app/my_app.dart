import 'package:buyzen/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_,context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Buyzen',
            theme: ThemeData(primarySwatch: Colors.blue),
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashRoute,
          );
        }
    );
  }
}