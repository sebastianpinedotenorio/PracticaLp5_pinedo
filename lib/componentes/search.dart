

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constantes.dart';


class Search extends StatelessWidget {
  const Search  ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        scaffoldBackgroundColor: kBackgroundColor,
        
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const SearchHome(),
    );

  }
}

class SearchHome extends StatelessWidget {
  const SearchHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [Container(
          height: size.height * 0.33,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 184, 216, 245),
            image: DecorationImage(
              alignment:Alignment.centerLeft, 
              image: AssetImage("assets/icons/summer.svg"),
              ),

          ),
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
                  padding: EdgeInsets.symmetric(horizontal:15, vertical:5),
                  decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Headspace",
                      icon: SvgPicture.asset("assets/icons/search.svg")
                      ),
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