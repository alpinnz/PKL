import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:app_v2/screens/editprofile_screen.dart';
import 'package:app_v2/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EditProfileScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0096ff),
                Color(0xff610f2),
              ],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFE1FCFF),
                Color(0xFF81F2FD),
                Color(0xFF81F2FD),
                Color(0xFF81F2FD),
              ],
            ),
          ),
          child: Center(
            child: FutureBuilder(
              future:
                  DefaultAssetBundle.of(context).loadString('assets/data.json'),
              builder: (context, userDataJson) {
                var userData = json.decode(userDataJson.data.toString());
                var user = userData['data'];
                print(user);

                if (!userDataJson.hasData) {
                  return CircularProgressIndicator();
                } else {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin:
                              const EdgeInsets.only(top: 25.5, bottom: 20.0),
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.indigo, width: 3.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              user['avatar'],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Card(
                          child: ListTile(
                            leading: Text('Name'),
                            title: Text(
                              user['firstName'] + ' ' + user['lastName'],
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Text('Email'),
                            title: Text(
                              user['email'],
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Text('Phone'),
                            title: Text(
                              user['phone'],
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Text('bio'),
                            title: Text(
                              user['bio'],
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
