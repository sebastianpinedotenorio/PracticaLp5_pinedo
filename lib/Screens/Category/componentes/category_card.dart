
// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constantes.dart';

class CategoryCard extends StatelessWidget {
  //ponemos las finales
  final String svgimg;
  final String title;
  final Function press;
  const CategoryCard({
    Key? key, 
    required this.svgimg, 
    required this.title, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(40),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
            offset: Offset(0,17),
            blurRadius: 24,
            spreadRadius: -23,
            color: kshadowColor,
          ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            
            //onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgimg),
                  // ignore: prefer_const_constructors
                  Spacer(),
                  Text(title,
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Color.fromARGB(255, 49, 1, 68), 
                    fontSize: 18,
                  ),
                  
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}