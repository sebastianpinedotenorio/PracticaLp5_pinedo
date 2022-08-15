

// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import '../../../constantes.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        const Text(
          "Sign Up",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const SizedBox(height: defaultPadding),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
          "Who are you?".toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold, 
            ),
        ),
        
        ),

        const SizedBox(height: defaultPadding),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 4,
              child: Image.asset("assets/images/hombre.png"),
            ),
            const Spacer(),
            
            Expanded(
              flex: 4,
              child: Image.asset("assets/images/trabajo-en-equipo.png"),
            ),

            const Spacer(),
            Expanded(
              flex: 4,
              child: Image.asset("assets/images/alumno.png"),
            ),
            const Spacer(),
          ],
          
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
