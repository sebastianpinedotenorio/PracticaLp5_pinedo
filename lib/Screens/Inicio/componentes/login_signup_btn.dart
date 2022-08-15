// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import '../../../constantes.dart';
import '../../Category/category_screen.dart';
import '../../Dashbord/dashbord_screen.dart';
import '../../Login/login_screen.dart';
import '../../SingUp/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Hero(
          
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
        ),


        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor, elevation: 0),
          child: Text(
            "Sign Up".toUpperCase(),
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.white),
          ),
        ),

        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CategoriaScreenF();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor , elevation: 0),
          child: Text(
            "Categoria".toUpperCase(),
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.white),
          ),
        ),

        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DashbordHome();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor , elevation: 0),
          child: Text(
            "Dashborad".toUpperCase(),
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.white),
          ),
        ),

        const SizedBox(height: 24),








      ],
    );
  }
}
