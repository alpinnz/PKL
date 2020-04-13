import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/services/routes.dart';
import 'package:flutter_ui_demo/services/services.dart';

// There are much better ways to handle this but it's outside of the scope of this tutorial
Future<void> main() async {
  
  try {
    await services();
    Timer(Duration(seconds: 1), () => runApp(MyApp()));
  } catch (error) {
    print('Locator setup has failed');
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      navigatorKey: Routes.sailor.navigatorKey,  // important
      onGenerateRoute: Routes.sailor.generator(),  

    );
  }
}


