import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: BaseApp(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => BaseApp(),
        '/UserLogin': (context) => LoginAsUser(),
        '/GuestLogin': (context) => LoginAsGuest(),
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Page Application'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('Login as User'),
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, '/UserLogin');
              },
            ),
            FlatButton(
              child: Text('Login as Guest'),
              color: Colors.red,
              onPressed: () {
                Navigator.pushNamed(context, '/GuestLogin');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LoginAsUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login As User Screen'),
      ),
      body: RaisedButton(
        child: Text('Go Back to Main'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class LoginAsGuest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login As Guest Screen'),
      ),
    );
  }
}
