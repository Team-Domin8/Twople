import 'package:flutter/material.dart';

class DateNightDoneRight extends StatefulWidget {
  static const String id = 'Date Night Done Right';
  const DateNightDoneRight({Key? key}) : super(key: key);

  @override
  State<DateNightDoneRight> createState() => _DateNightDoneRightState();
}

class _DateNightDoneRightState extends State<DateNightDoneRight> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Hero(
            tag: DateNightDoneRight.id,
            child: SizedBox(
              height: size.height*0.43,width: double.infinity,
              child: const Image(
                image: AssetImage('images/DateNightDoneRight.jpeg'),
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
                            child: Text('Date Night Done Right',
                              style: TextStyle(
                                color: Color(0xFFFFBD58),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height*0.01),
                            child: Text('Electronic City',
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
                    child: Text('Coming Soon',
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
                          TextButton(onPressed: (){}, child: Text('INR 16,000',
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
