import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        right: false,
        left: false,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.96,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: 6, right: 6, top: 6, bottom: 20),
                      child: ListTile(
                        title: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Get User to Sign in',
                          style: TextStyle(
                            color: Color(0xFF929292),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Color(0xFF929292),
                          ),
                          hintText: 'Alfin NoviAji',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                        ),
                        controller: null,
                        onFieldSubmitted: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xFF929292),
                          ),
                          hintText: 'alpinnz@gmail.com',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                        ),
                        controller: null,
                        onFieldSubmitted: null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xFF929292),
                          ),
                          hintText: '********',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                        ),
                        controller: null,
                        onFieldSubmitted: null,
                        obscureText: true,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(
                          labelText: 'Password Verify',
                          labelStyle: TextStyle(
                            color: Color(0xFF929292),
                          ),
                          hintText: '********',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF00c569),
                            ),
                          ),
                        ),
                        controller: null,
                        onFieldSubmitted: null,
                        obscureText: true,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 15, right: 15, bottom: 15, top: 40),
                      width: double.infinity,
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        color: Color(0xFF00c569),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
