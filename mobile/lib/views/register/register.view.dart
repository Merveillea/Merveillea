// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:area/views/base.view.dart';
import 'package:area/viewmodels/register.viewmodel.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  static const routeName = '/register';

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: const Color(0xff40916c),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 160,
                ),
                Align(
                  child: Text(
                    'Bienvenue',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  child: Text(
                    'Créer votre compte',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 16
                    ),
                  )
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: TextField(
                    controller: nameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white,),
                      ),
                      labelText: 'Nom d\'utilisateur',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 17),
                  child: TextField(
                    controller: mailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white,),
                      ),
                      labelText: 'Adresse mail',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 17),
                  child: TextField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Colors.white,),
                      ),
                      labelText: 'Mot de passe',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 310,
                  height: 50,
                  color: Color(0xff40916c),
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: ElevatedButton(
                    child: const Text(
                      'Créer un compte',
                      style: TextStyle(
                         color: Color(0xff40916c),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0))
                      ),
                    ),
                    onPressed: () {
                      log(nameController.text);
                      log(passwordController.text);
                    },
                  )
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      'Déjà un compte?',
                      style: TextStyle(color: Colors.white)
                    ),
                    TextButton(
                      child: const Text(
                        'Se connecter',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      onPressed: () {
                        //signup screen
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
