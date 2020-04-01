import 'package:flutter/material.dart';

class LoginMateial extends StatefulWidget {
  @override
  _LoginMateialState createState() => _LoginMateialState();
}

class _LoginMateialState extends State<LoginMateial> {
  final email = TextField(
    decoration: InputDecoration(
        border: InputBorder.none, hintText: 'Enter a search term'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        leading: Icon(Icons.lock),
        title: Text(
          'Login',
          style: TextStyle(
            fontFamily: 'Merriweather-Black',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // image
              Container(
                margin: const EdgeInsets.only(top: 25.0, bottom: 20.0),
                height: 200.0,
                width: 200.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/login.png',
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Form Text Email
              Container(
                margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 1.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                      fontFamily: "Merriweather-Black",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  maxLines: 1,
                ),
              ),
              // Form Text Password
              Container(
                margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 1.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                      fontFamily: "Merriweather-Black",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  maxLines: 1,
                ),
              ),
              // Form Buttom login
              Container(
                margin: const EdgeInsets.only(top: 15.0, bottom: 7.5),
                child: RaisedButton(
                  color: Colors.red[700],
                  textColor: Colors.white,
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Merriweather-Black',
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
