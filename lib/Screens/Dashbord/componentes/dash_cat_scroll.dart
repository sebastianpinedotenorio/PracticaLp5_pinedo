
// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

//Se necesita listar los botones de lo items
class CategoriasDash extends StatefulWidget {
  const CategoriasDash({Key? key}) : super(key: key);

  @override
  State<CategoriasDash> createState() => _CategoriasDashState();
}

class _CategoriasDashState extends State<CategoriasDash> {

  List<String> categorias = ["Sleep","Walk","Relax","Morning","Soleado"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //altura de la fila de items
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        //tamaño de la caja
        height: 34,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          //tamaño de las categorias
          itemCount: categorias.length,
          itemBuilder: (context, index) =>buildCategoriaItem(index),
          ),
      ),
    );
  }

  Widget buildCategoriaItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 9),
        padding: const EdgeInsets.symmetric(horizontal:20, vertical:8),
    
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          color: selectedIndex == index ? Color.fromARGB(255, 18, 220, 247):Color.fromARGB(255, 192, 150, 226),
          borderRadius: BorderRadius.circular(30)
        ),
    
    
        child: Text(
            categorias[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // ignore: prefer_const_constructors
              color: selectedIndex == index ? Colors.black :Color.fromARGB(255, 255, 255, 255),
              
            ),
            ),
      ),
    );
  }
}