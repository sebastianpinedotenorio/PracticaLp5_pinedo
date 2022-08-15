

import 'package:flutter/material.dart';


class InicioImagen extends StatelessWidget {
  const InicioImagen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "\nBIENVENIDO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
        ),
        //const SizedBox(height: 2),
       
        const SizedBox(height: 12),
      ],
    );
  }
}