import 'package:area/viewmodels/login.viewmodel.dart';
import 'package:area/views/base.view.dart';
import 'package:flutter/material.dart';
import 'package:area/viewmodels/login.viewmodel.dart';
import 'package:area/views/base.view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(),
          ),
        );
      },
    );
  }
}
