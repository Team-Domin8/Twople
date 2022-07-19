import 'package:flutter/material.dart';
import 'package:twople/activities.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'HomePage';
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Scaffold(
        backgroundColor: Color(0xFFEDD3F2),
        body: Padding(
          padding: EdgeInsets.only(top: size.height*0.05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.07,
                  width: size.width,
                  child: Image.asset('images/logo.png'),
                ),
                SizedBox(
                  height: size.height*0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Live in Bengaluru ',
                      style: TextStyle(color: Color(0xFF6D70D4),
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.location_on),
                  ],
                ),
                SizedBox(
                  height: size.height*0.0001,
                  width: size.width*0.95,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Flex(
                        direction: Axis.vertical,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Activities(actName: 'Bake the Cake', imageAdd: 'BakeTheCake.png'),
                                Activities(actName: 'Colour Your World', imageAdd: 'ColourYourWorld.png'),
                                Activities(actName: 'Date Night Done Right', imageAdd: 'DateNightDoneRight.jpeg'),
                                Activities(actName: 'Day Out In Koramangla', imageAdd: 'DayOutInKoramangla.jpeg'),
                                Activities(actName:  'Dinner By The Lake', imageAdd: 'DinnerByTheLake.png'),
                                Activities(actName: 'Dinner Under The Tree', imageAdd: 'DinnerUnderTheTree.png'),
                                Activities(actName: 'Eat,Paint,Love', imageAdd: 'Eat,Paint,Love.png'),
                                Activities(actName: 'Farm Stay', imageAdd: 'FarmStay.jpeg'),
                                Activities(actName: 'Four More Shots', imageAdd: 'FourMoreShots.png'),
                                Activities(actName: 'Pottery,Pyaar & Pancakes', imageAdd: 'Pottery,Pyaar&Pankcakes.jpeg'),
                                Activities(actName: 'Rush Hours', imageAdd: 'RushHours.jpeg'),
                                Activities(actName: 'Tea By The Bae', imageAdd: 'TeaByTheBae.png'),
                                Activities(actName: 'Terrace Tea Party', imageAdd: 'TerraceTeaParty.png'),
                                SizedBox(
                                  height: size.height*0.2,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
