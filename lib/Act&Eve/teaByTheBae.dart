import 'package:flutter/material.dart';

class TeaByTheBae extends StatefulWidget {
  static const String id = 'Tea By The Bae';
  const TeaByTheBae({Key? key}) : super(key: key);

  @override
  State<TeaByTheBae> createState() => _TeaByTheBaeState();
}

class _TeaByTheBaeState extends State<TeaByTheBae> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Hero(
            tag: TeaByTheBae.id,
            child: SizedBox(
              height: size.height*0.43,width: double.infinity,
              child: const Image(
                image: AssetImage('images/TeaByTheBae.png'),
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
                            child: Text('Tea By The Bae',
                              style: TextStyle(
                                color: Color(0xFFFFBD58),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height*0.01),
                            child: Text('Bannerghatta Road',
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
                    child: Text('A private picnic at the lakefront lawn with tons and tons of beautiful conversations with your loved one, as the sun sets over the pristine lake, and gorging on some scrumptious food.',
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
                          TextButton(onPressed: (){}, child: Text('INR 10,000',
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
