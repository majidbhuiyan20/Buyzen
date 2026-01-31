import 'package:buyzen/common/main_nav/view/main_nav_holder_screen.dart';
import 'package:buyzen/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import '../common/splash/view/splash_screen.dart';


class Routes{
  static const String splashRoute="/";
  static const String bottomNavBarRoute="/bottomNavbarRoute";
  static const String loginRoute="/loginScreen";
  static const String mainNavRoute="/mainNavScreen";

}
class RouteGenerator{
  static Route<dynamic>getRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=> SplashScreen());
      case Routes.mainNavRoute:
        return MaterialPageRoute(builder: (_)=> MainNavHolderScreen());
      default:
        return unDefineRoute();
    }

  }
  static Route<dynamic>unDefineRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title: Text(AppStrings.noRoute),),
      body: Center(child: Text(AppStrings.noRoute),),
    ));
  }
}