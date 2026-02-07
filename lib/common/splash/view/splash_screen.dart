import 'package:buyzen/app/app_colors.dart';
import 'package:buyzen/app/routes.dart';
import 'package:buyzen/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async{
    await Future.delayed(Duration(seconds: 1));
        Navigator.pushReplacementNamed(context, Routes.bottomNavBarRoute);
       }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Spacer(),
            Text("BuyZen", style: TextStyle(fontSize: 48, fontWeight: .w800, color: AppColors.themeColor),),
            Spacer(),
            CircularProgressIndicator(color: AppColors.themeColor,),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
