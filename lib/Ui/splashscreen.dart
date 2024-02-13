import 'package:flutter/material.dart';

import '../Const/const.dart';

import 'introduction_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> goHome()async {
    
    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=> const IntroductionScreen())));
  }
  @override
  void initState() {
   goHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png',width: 105,height: 127,),
            const SizedBox(height: 6,),
            Text('GameSheild Vpn',style: kTextStyle.copyWith(fontSize: 24,fontWeight: FontWeight.bold,color: kWhite),)
          ],
        ),
      ),
    );
  }
}
