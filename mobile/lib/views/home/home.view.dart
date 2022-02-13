import 'package:flutter/material.dart';
import 'widgets/custom.widget.dart';
import 'package:area/views/base.view.dart';
import 'package:area/viewmodels/home.viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 100,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Color(0xff40916c)),
            leading: const Center(
              child: Text(
                "Area",
                style: TextStyle(
                  color: Color(0xff40916c),
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            actions: const <Widget> [
              InkWell(
                child: Icon(
                  Icons.person_pin,
                  size: 40,
                ),
              ),
            ],
          ),
          body: Container(),
        );
      }
    );
  }
}
