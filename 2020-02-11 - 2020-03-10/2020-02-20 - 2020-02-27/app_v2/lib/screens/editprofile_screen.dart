import 'package:flutter/material.dart';
import 'package:app_v2/screens/login_screen.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // photo
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 20.0),
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
                        'assets/images/profile.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // Form Text firstName
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
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
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: 'firstName',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
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
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: 'lastName',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
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
                        // helperText: 'Your email address',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  // Form Text Phone
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
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
                          Icons.phone,
                          color: Colors.black,
                        ),
                        labelText: 'Phone',
                        // helperText: 'Your phone',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  // Form Text Bio
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
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
                          Icons.note,
                          color: Colors.black,
                        ),
                        labelText: 'Bio',
                        // helperText: 'Your bio',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      maxLines: 5,
                    ),
                  ),
                  // Form Buttom Save
                  Container(
                    margin: const EdgeInsets.only(top: 15.0, bottom: 7.5),
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                      elevation: 10.0,
                      highlightElevation: 30.0,
                      // shape: Border.all(width: 2.0, color: Colors.indigo),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Save',
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
        ),
      ),
    );
  }
}
