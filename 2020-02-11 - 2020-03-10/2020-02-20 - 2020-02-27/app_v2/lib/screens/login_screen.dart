import 'package:flutter/material.dart';
import 'package:app_v2/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =
      TextEditingController(text: 'alpinnz@gmail.com');
  TextEditingController passwordController =
      TextEditingController(text: '12345');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 50.0, bottom: 25.0),
                  padding: const EdgeInsets.all(5),
                  height: 200.0,
                  width: 200.0,
                  child: ClipOval(
                    child: Image.asset('assets/images/login.png'),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                  padding: const EdgeInsets.all(5),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
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
                const SizedBox(height: 10.0),
                Container(
                  margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                  padding: const EdgeInsets.all(5),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    obscureText: true,
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
                const SizedBox(height: 50.0),
                Container(
                  child: RaisedButton(
                    color: Colors.grey,
                    textColor: Colors.white,
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
