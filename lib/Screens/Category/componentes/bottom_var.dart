
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../category_screen.dart';

class BottomVar extends StatelessWidget {
  const BottomVar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 78,
      color: Color.fromARGB(255, 240, 225, 233),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          
          BottomNavItem(
            title: "Calendar",
            svgimg: "assets/icons/calendar.svg", 
            press: (){},
          ),


          BottomNavItem(
            title: "Icono",
            svgimg: "assets/icons/gym.svg", 
            press: (){},
            isActive: true,
          ),

          BottomNavItem(
            title: "Settings",
            svgimg: "assets/icons/Settings.svg", 
            press: (){},
          ),


        ],
      ),
    );
  }
}

