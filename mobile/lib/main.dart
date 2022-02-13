import 'package:flutter/material.dart';
import 'package:area/helpers/theme.dart';
import 'locator.dart';
import 'routes.dart';
import './views/login/login.view.dart';
import './views/splash/splash.view.dart';


/// [globalInitializer()]
/// Function to initialise all the pre-app things
globalInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
}

void main() async {
  await globalInitializer();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Area',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
    );
  }
}
