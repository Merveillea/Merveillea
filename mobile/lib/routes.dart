import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'helpers/empty.view.dart';
import 'views/home/home.view.dart';
import 'views/login/login.view.dart';
import 'views/register/register.view.dart';
import 'views/splash/splash.view.dart';

/// [AppRouter]
/// This the base router classes where you can registered
/// and customize all the named routes of your app
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(builder: (_) => HomeView());
      case LoginView.routeName:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RegisterView.routeName:
        return MaterialPageRoute(builder: (_) => RegisterView());
      default:
        return MaterialPageRoute(builder: (_) {
          return EmptyView();
        });
    }
  }
}
