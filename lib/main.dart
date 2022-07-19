import 'package:flutter/material.dart';
import 'package:twople/Act&Eve/bakeTheCake.dart';
import 'package:twople/Act&Eve/colourYourWorld.dart';
import 'package:twople/Act&Eve/dateNightDoneRight.dart';
import 'package:twople/Act&Eve/dayOutInKoramangla.dart';
import 'package:twople/Act&Eve/dinnerByTheLake.dart';
import 'package:twople/Act&Eve/dinnerUnderTheTree.dart';
import 'package:twople/Act&Eve/eatPaintLove.dart';
import 'package:twople/Act&Eve/farmStay.dart';
import 'package:twople/Act&Eve/fourMoreShorts.dart';
import 'package:twople/Act&Eve/potteryPyaarPancakes.dart';
import 'package:twople/Act&Eve/rushHours.dart';
import 'package:twople/Act&Eve/teaByTheBae.dart';
import 'package:twople/Act&Eve/terraceTeaParty.dart';
import 'package:twople/cartDetails.dart';
import 'package:twople/homePage.dart';
import 'package:twople/infoPage.dart';
import 'package:twople/introScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
        MyHomePage.id: (context) => MyHomePage(),
        BakeTheCake.id: (context) => BakeTheCake(),
        ColourYourWorld.id:(context) => ColourYourWorld(),
        DateNightDoneRight.id:(context) => DateNightDoneRight(),
        DinnerByTheLake.id:(context) => DinnerByTheLake(),
        DinnerUnderTheTree.id:(context) => DinnerUnderTheTree(),
        EatPaintLove.id :(context) => EatPaintLove(),
        FarmStay.id :(context) => FarmStay(),
        FourMoreShorts.id :(context) => FourMoreShorts(),
       PotteryPyaarPancakes.id :(context) => PotteryPyaarPancakes(),
        RushHours.id :(context) => RushHours(),
        TeaByTheBae.id :(context) => TeaByTheBae(),
        TerraceTeaParty.id :(context) => TerraceTeaParty(),
        DayOutInKoramangla.id :(context)=> DayOutInKoramangla(),
        CartDetails.id: (context) => CartDetails(),
      },
    );
  }
}




