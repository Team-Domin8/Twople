import 'package:flutter/material.dart';

class FarmStay extends StatefulWidget {
  static const String id = 'Farm Stay';
  const FarmStay({Key? key}) : super(key: key);

  @override
  State<FarmStay> createState() => _FarmStayState();
}

class _FarmStayState extends State<FarmStay> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Hero(
            tag: FarmStay.id,
            child: SizedBox(
              height: size.height*0.43,width: double.infinity,
              child: const Image(
                image: AssetImage('images/FarmStay.jpeg'),
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
                            child: Text('Farm Stay',
                              style: TextStyle(
                                color: Color(0xFFFFBD58),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height*0.01),
                            child: Text('Neelamangala',
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
                    child: Text('Book this unique farm stay with a personalised candle light dinner among the beautiful guava trees.',
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
                          TextButton(onPressed: (){}, child: Text('INR 8,500',
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
