import 'package:flutter/material.dart';
import 'package:twople/homePage.dart';

class IntroScreen extends StatefulWidget {
  static const String id = 'Intro';
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFEDD3F2),
     body: Padding(
       padding: EdgeInsets.only(top: size.height*0.065),
       child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.height*0.05,
                  width: size.width*0.35,
                  child: Image.asset('images/logo.png'),
                ),
                Row(
                  children: [
                    SizedBox(
                      child: TextButton(
                        onPressed: () { },
                        child: Text('HOME',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),),
                      ),
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () { },
                        child: Text('ABOUT US',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Padding(
                  padding: EdgeInsets.only(top: size.height*0.04, left: size.width*0.05),
                  child: Text('Stop taking your partner to pubs for the date night!',
                    style: TextStyle(
                      color: Color(0xFFCA6CE5),
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),),
                ),
                SizedBox(
                height: size.height*0.6,
                child: Image.asset('images/introPageLogo.jpeg'),
              ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.8,
                  decoration: BoxDecoration(
                    color: Color(0xFFCA6CE5),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, MyHomePage.id);
                  }, child: Text('Explore date plans',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),),),
                ),
              ],
            ),
          ],
        ),
     )
    );
  }
}
