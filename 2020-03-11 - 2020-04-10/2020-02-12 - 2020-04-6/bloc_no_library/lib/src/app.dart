import 'package:flutter/material.dart';

import './views/home_view.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc No Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(title: 'BLoC No Library'),
    );
  }
}
