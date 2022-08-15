
// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'componentes/dash_cat_scroll.dart';
import 'componentes/dashbord_categ_bottom.dart';
import 'componentes/dashbord_categoria.dart';

class MyDasbord extends StatelessWidget {
  const MyDasbord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      theme: ThemeData(
  
        //textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const DashbordHome(),
    );


  }
}


class DashbordHome extends StatelessWidget {
  const DashbordHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomDash(),
      body: Stack(
        children: [Container(
        ),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15, vertical:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [

                //buscador
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal:9, vertical:12),
                  decoration:  BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    cursorColor: Color(0xFFB1F39D),
                    decoration: InputDecoration(
                      hintText: "Search Headspace",
                      icon: SvgPicture.asset("assets/icons/search.svg",
                      color: Color.fromARGB(255, 240, 104, 233),
                      ),
                      ),
                  ),
                ),

                //categorias
                CategoriasDash(),


                Expanded(
                  child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 15,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    DashCategoria(
                      title: "Featured",
                      svgimg: "assets/icons/007-shopping-basket.svg",
                      press: (){},
                    ),

                    DashCategoria(
                      title: "Meditation Essential",
                      svgimg: "assets/icons/003-star.svg",
                      press: (){},
                    ),

                    DashCategoria(
                      title: "Stress & Ansiety",
                      svgimg: "assets/icons/016-leaf.svg",
                      press: (){},
                    ),

                    DashCategoria(
                      title: "Personal Grout",
                      svgimg: "assets/icons/003-star.svg",
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

class BottomNavItemDash extends StatelessWidget {
  final String svgimg;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItemDash({
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
          SvgPicture.asset(svgimg, ),
          Text(title, 
          style: TextStyle(
            fontSize: 15,
            color: isActive? Color.fromARGB(255, 241, 12, 107) : Color.fromARGB(255, 242, 244, 250)),
          ),
        ],
      ),
    );
  }
}
