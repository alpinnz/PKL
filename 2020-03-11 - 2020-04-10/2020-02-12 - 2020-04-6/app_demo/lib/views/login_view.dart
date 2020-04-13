import 'package:flutter/material.dart';
import 'package:app_demo/widgets/login_widget.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[700],
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: LoginWidget(),
            ),
            Expanded(flex: 3, child: null),
            // Expanded(flex: 2, child: null),
          ],
        ),
      ),
    );
  }
}
