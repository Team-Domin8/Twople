import 'package:flutter/material.dart';

class Activities extends StatefulWidget {

  Activities({required this.actName, required this.imageAdd});
  final String imageAdd;
  final String actName;

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  _nextPage(String routeName){
    setState(()=>{
      Navigator.pushNamed(context, routeName)
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => _nextPage(widget.actName),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(29),
        ),
        height: size.height*0.41,
        child: Card(
          elevation: 10.0,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF6D70D4))
            ),
            child: Column(
              children: [
                Hero(
                  tag: widget.actName,
                  child: SizedBox(
                    height: size.height*0.35,width: size.height*0.4,
                    child: Image(
                      image: AssetImage('images/${widget.imageAdd}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.actName,
                        style: TextStyle(
                          color: const  Color(0xFF6D70D4),
                          fontWeight: FontWeight.w500,
                          fontSize: size.height*0.030,
                          fontStyle: FontStyle.italic
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}