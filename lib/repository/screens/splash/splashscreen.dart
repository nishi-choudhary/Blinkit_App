import 'package:blinkit_clone1/domain/constants/appcolors.dart';
import 'package:blinkit_clone1/repository/widgets/uihelper.dart';
import 'package:blinkit_clone1/screens/login/loginscreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginscreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [UiHelper.CustomImage(img: "image 1 (1).png")]),
      ),
    );
  }
}
