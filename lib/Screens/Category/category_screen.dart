

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constantes.dart';
import 'componentes/bottom_var.dart';
import 'componentes/category_card.dart';
//import 'package:flutter_svg/svg.dart';


class CategoriaScreenF extends StatelessWidget {
  const CategoriaScreenF({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        scaffoldBackgroundColor: kBackgroundColor,
        
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const CategoriaHome(),
    );

  }
}

class CategoriaHome extends StatelessWidget {
  const CategoriaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: BottomVar(),
      body: Stack(
        children: [Container(
          //height: size.height * 0.50,

          //Altura de la imagen top
          height: 350,
          //width: 400,
          
        ),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15, vertical:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 52,
                    //icono del costado
                    //color: Colors.black,
                    decoration:const BoxDecoration(
                      color: kBackgroundColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ),

                const Text("Classify transaction",
                  style: TextStyle(
                    wordSpacing: 6,
                    color: Colors.white, 
                    
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const Text("\nClassify this transaction into a \nparticular category\n",
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 18,  
                  ),
                ),
                

                Expanded(
                  child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.18,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 10,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CategoryCard(
                      title: "General",
                      svgimg: "assets/icons/003-star.svg",
                      press: (){},
                    ),

                    CategoryCard(
                      title: "Transport",
                      svgimg: "assets/icons/004-truck.svg",
                      press: (){},
                    ),

                    CategoryCard(
                      title: "Shopping",
                      svgimg: "assets/icons/007-shopping-basket.svg",
                      press: (){},
                    ),

                    CategoryCard(
                      title: "Bills",
                      svgimg: "assets/icons/002-invoice.svg",
                      press: (){},
                    ),

                    CategoryCard(
                      title: "Entertaiment",
                      svgimg: "assets/icons/003-star.svg",
                      press: (){},
                    ),

                    CategoryCard(
                      title: "Next",
                      svgimg: "assets/icons/016-leaf.svg",
                      press: (){},
                    ),
                  
                  ],
                
                  ),
                ),

              ],
            ),
          ),
        )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgimg;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key? key, 
    required this.svgimg, 
    required this.title, 
    required this.press, 
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: press,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgimg),
          Text(title, 
          style: TextStyle(
            fontSize: 15,
            color: isActive? kActiveColor : kTextColor),
          ),
        ],
      ),
    );
  }
}

