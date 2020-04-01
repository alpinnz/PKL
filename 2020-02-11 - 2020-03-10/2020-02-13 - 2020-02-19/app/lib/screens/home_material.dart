import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:app/popup_menus/menu_popup.dart';

class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        leading: Icon(Icons.home),
        title: Text(
          'Home',
          style: TextStyle(
            fontFamily: 'Merriweather-Black',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: actionPopupMenu,
            itemBuilder: (BuildContext context) {
              return MenuPopup.choices.map((String choices) {
                return PopupMenuItem<String>(
                    value: choices, child: Text(choices));
              }).toList();
            },
          ),
        ],
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
              builder: (context, snapshot) {
                
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                var usersData = json.decode(
                  snapshot.data.toString(),
                );
                print(usersData);
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 25.5, bottom: 20.0),
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.indigo, width: 3.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100.0),
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            usersData['image'],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Card(
                        child: ListTile(
                          leading: Text('Name'),
                          title: Text(
                            usersData['name'],
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Text('Email'),
                          title: Text(
                            usersData['email'],
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Text('Phone'),
                          title: Text(
                            usersData['phone'],
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Text('bio'),
                          title: Text(
                            usersData['bio'],
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void actionPopupMenu(String value) {
    // if
    (value == MenuPopup.Home) ? Navigator.pushNamed(context, '/') : Text('');
    (value == MenuPopup.EditProfile)
        ? Navigator.pushNamed(context, '/EditProfileMaterial')
        : Text('');
    (value == MenuPopup.SignOut)
        ? Navigator.pushNamed(context, '/LoginMaterial')
        : Text('');
  }
}
