

// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashCategoria extends StatelessWidget {
  //ponemos las finales
  final String svgimg;
  final String title;
  final Function press;
  const DashCategoria({
    Key? key, 
    required this.svgimg, 
    required this.title, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 104, 233),
          borderRadius: BorderRadius.circular(18),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
            offset: Offset(0,17),
            blurRadius: 25,
            spreadRadius: -23,
            color: Color.fromARGB(255, 4, 59, 55),
          ),
          ],
        ),
        child: Material(
          color: Color.fromARGB(59, 48, 165, 233),
          child: InkWell(
            
            //onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [

                  Spacer(),
                  SvgPicture.asset(svgimg,),
                  Spacer(),
                  Text(title,
                  textAlign: TextAlign.end,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 252, 252), 
                    fontSize: 18,
                  ),
                  
                  ),

                  // ignore: prefer_const_constructors
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}