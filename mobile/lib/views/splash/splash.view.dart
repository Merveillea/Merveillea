// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:area/helpers/enums.dart';
import 'package:area/helpers/userstate.dart';
import 'package:area/views/base.view.dart';
import 'package:area/viewmodels/splash.viewmodel.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);


  static const routeName = '/splash';

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacementNamed(ustatus == UserState.Anonymous ? '/login' : '/home'));
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText(
                      "Area",
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(
                        color: Color(0xff40916c),
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                      ),
                      speed: const Duration(milliseconds: 600)
                    ),
                  ],
                ),
                // const Text(
                  // "Area",
                  // style: TextStyle(
                    // color: Color(0xff40916c),
                    // fontWeight: FontWeight.w700,
                    // fontSize: 36,
                  // ),
                  // textAlign: TextAlign.center,
                // ),
                const SizedBox(
                  height: 25,
                ),
                const CircularProgressIndicator(color: Color(0xff40916c),)
              ],
            ),
          ),
        );
      },
    );
  }
}