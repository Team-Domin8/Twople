import 'package:flutter/material.dart';
import 'package:twople/cartDetails.dart';


class BakeTheCake extends StatefulWidget {
  const BakeTheCake({Key? key}) : super(key: key);

  static const String id = 'Bake the Cake';

  @override
  State<BakeTheCake> createState() => _BakeTheCakeState();
}

class _BakeTheCakeState extends State<BakeTheCake> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Hero(
            tag: BakeTheCake.id,
            child: SizedBox(
              height: size.height*0.43,width: double.infinity,
              child: const Image(
                image: AssetImage('images/BakeTheCake.png'),
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
                           child: Text('Bake the Cake',
                             style: TextStyle(
                               color: Color(0xFFFFBD58),
                               fontSize: 30.0,
                               fontWeight: FontWeight.bold,
                             ),),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: size.height*0.01),
                           child: Text('Banashankari',
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
                   child: Text('A 2-hour-long guided baking session by professional chef with over 20 years of experience. Also, take the pastry back to your place or celebrate the occasion at the venue itself',
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
                     TextButton(onPressed: (){}, child: Text('INR 2,500',
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
                       child: TextButton(
                         onPressed: () {
                           Navigator.pushNamed(context, CartDetails.id);
                         },
                         child: Text('Book a Date',
                         style: TextStyle(
                           fontSize: 20,
                           color: Colors.black,
                         ),),
                       ),
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
