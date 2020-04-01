import 'package:flutter/material.dart';
import 'package:app/screens/editprofile_material.dart';
import 'package:app/screens/home_material.dart';
import 'package:app/screens/login_material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Login(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (context) => HomeMaterial(),
        '/LoginMaterial' : (context) => LoginMateial(),
        '/EditProfileMaterial' : (context) => EditProfileMaterial(),
      },
    );
  }
}
