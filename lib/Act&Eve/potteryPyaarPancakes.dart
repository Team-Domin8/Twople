import 'package:flutter/material.dart';

class PotteryPyaarPancakes extends StatefulWidget {
  static const String id = 'Pottery,Pyaar & Pancakes';
  const PotteryPyaarPancakes({Key? key}) : super(key: key);

  @override
  State<PotteryPyaarPancakes> createState() => _PotteryPyaarPancakesState();
}

class _PotteryPyaarPancakesState extends State<PotteryPyaarPancakes> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Hero(
            tag: PotteryPyaarPancakes.id,
            child: SizedBox(
              height: size.height*0.43,width: double.infinity,
              child: const Image(
                image: AssetImage('images/Pottery,Pyaar&Pankcakes.jpeg'),
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
                            child: Text('Pottery, Pyaar & Pancakes',
                              style: TextStyle(
                                color: Color(0xFFFFBD58),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height*0.01),
                            child: Text('JP Nagar',
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
                    child: Text('Looking for the perfect way to celebrate the weekend with your partner? Bring out your creative side with Pottery, Pyaar & Pancakes by Twople every weekend. With unlimited spread of American breakfast and a chance to create pottery from scratch.',
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
                          TextButton(onPressed: (){}, child: Text('INR 1,500',
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
