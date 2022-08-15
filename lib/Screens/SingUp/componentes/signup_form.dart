// ignore_for_file: prefer_const_constructors, duplicate_ignore, unnecessary_new
import 'package:flutter/material.dart';

import '../../../componentes/check_cuenta.dart';
import '../../../constantes.dart';

import '../../Login/login_screen.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            cursorColor: kPrimaryColor,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Username",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),

          //formulario del  SINGNUP
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onSaved: (email) {},
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your Email",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.email),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Confirm password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),

          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {},
            child: Text("Sign Up".toUpperCase(),
            style:TextStyle(fontSize: 20),
            ),
          ),

          const SizedBox(height: 30),
          CheckCuenta(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),



          //======ENLACE A PAGINAS ========
/* 
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            // ignore: deprecated_member_use
            child: new RaisedButton(
              onPressed:() =>{
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoriaScreenF()),)
                ,
              },
              child:Text("Ir a la pagina Categoria",)
            ),
          
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            // ignore: deprecated_member_use
            child: new RaisedButton(
              onPressed:() =>{
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => DashboardScreenTwo()),)
                ,
              },
              child:Text("Ir a la pagina Dashboard",)
            ),
          
          ),
 */



        ],
      ),
    );
  }
}
