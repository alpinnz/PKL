import 'package:flutter/material.dart';
import 'package:flutter_mvp_architecture/view/myhomepage.dart';
import 'package:flutter_mvp_architecture/presenter/presenter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter Demo MVP',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(
        new BasicAppPresenter(),
        title: 'Flutter Demo MVP',
      ),
    );
  }
}
