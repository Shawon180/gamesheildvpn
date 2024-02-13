import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamesheildvpn/Const/const.dart';
import 'package:gamesheildvpn/Ui/homescreen.dart';
class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(
      backgroundColor: kPrimaryColor,
      bottomButtonColor: Colors.green,
      bottomButtonBorderRadius: BorderRadius.circular(30),
      bottomButtonChild:  Text('Skip for now',style: kTextStyle.copyWith(color: kWhite),),
      onPressedOnLastPage: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen())),
      pages: [

         CupertinoOnboardingPage(
          title: Image.asset('images/SafeSecured.png',width: 240,height: 240,),
          body: Column(
            children: [
              Text('Safe and Secured',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold,fontSize: 24),),
         const SizedBox(height: 6,),
           Text('we always been committed  to protecting\nyour privacy and your data ',style: kTextStyle.copyWith(color: kWhite,),textAlign: TextAlign.center,),
            ],
          ),
        ),
         CupertinoOnboardingPage(
          title: Image.asset('images/7days.png',width: 160,height: 160,),
          body: Column(
          children: <Widget>[

            Text('7 Days Free Trial',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold,fontSize: 24),),
            const SizedBox(height: 6,),
            Text('only \$9.99 monthly after free trial\nRecuring billing cancel anytime',style: kTextStyle.copyWith(color: kWhite,),textAlign: TextAlign.center,),
          ],
        ),
        ),
         CupertinoOnboardingPage(
          title: Image.asset('images/7days.png',width: 160,height: 160,),
          body:  Column(
          children: <Widget>[

            Text('7 Days Free Trial',style: kTextStyle.copyWith(color: kWhite,fontWeight: FontWeight.bold,fontSize: 24),),
            const SizedBox(height: 6,),
            Text('only \$9.99 monthly after free trial\nRecuring billing cancel anytime',style: kTextStyle.copyWith(color: kWhite,),textAlign: TextAlign.center,),
          ],
        ),
        ),
      ],
    );
  }
}
