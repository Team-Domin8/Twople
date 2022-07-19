import 'package:flutter/material.dart';

class DinnerUnderTheTree extends StatefulWidget {
  static const String id = 'Dinner Under The Tree';
  const DinnerUnderTheTree({Key? key}) : super(key: key);

  @override
  State<DinnerUnderTheTree> createState() => _DinnerUnderTheTreeState();
}

class _DinnerUnderTheTreeState extends State<DinnerUnderTheTree> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Hero(
            tag: DinnerUnderTheTree.id,
            child: SizedBox(
              height: size.height*0.43,width: double.infinity,
              child: const Image(
                image: AssetImage('images/DinnerUnderTheTree.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.57,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: size.height*0.02),
                            child: Text('Dinner Under The Tree',
                              style: TextStyle(
                                color: Color(0xFFFFBD58),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height*0.01),
                            child: Text('MG Road',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03),
                  child: Center(
                    child: Text('Framed by the lofty, lantern hung trees and under the starry night sky, experience a specially curated menu, prepared just the way you like it by the master chefs and served with intuitive care by a personal butler at a candlelit table.',
                    style: TextStyle(
                          color: Colors.white,
                          fontSize: 28
                      ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03, bottom:size.height*0.03 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Price for 2',
                            style: TextStyle(
                                color: Color(0xFFFFBD58),
                                fontSize: 25
                            ),),
                          TextButton(onPressed: (){}, child: Text('INR 15,000',
                            style: TextStyle(
                                fontSize: 25
                            ),)),
                        ],),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFFBD58),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: size.height*0.05,
                        width: size.width*0.35,
                        child: Text('Book a Date',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                        alignment: Alignment.center,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
