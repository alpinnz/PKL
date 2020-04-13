import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _logoHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.developer_mode,
          size: MediaQuery.of(context).size.width * 0.2,
          color: Colors.white,
        ),
        Text(
          'MASPION',
          style: TextStyle(
              color: Colors.white, fontSize: 34.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _fieldEmail() {
    return TextFormField(
      cursorColor: Colors.black,
      style: TextStyle(
        color: Colors.white60,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.alternate_email,
          color: Colors.white60,
        ),
        filled: true,
        fillColor: Colors.red[600],
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.white70),
        helperText: '',
        errorStyle: TextStyle(color: Colors.white70),
        hasFloatingPlaceholder: false,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      maxLines: 1,
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      validator: _validateEmail,
    );
  }

  String _validateEmail(String value) {
    if (value.isEmpty) return 'Enter email address';

    String p = '[a-zA-Z0-9\+\.\_\%\-\+]{1,256}' +
        '\\@' +
        '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}' +
        '(' +
        '\\.' +
        '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}' +
        ')+';
    RegExp regExp = new RegExp(p);

    if (regExp.hasMatch(value)) return null;

    return 'Email is not valid';
  }

  Widget _fieldPassword() {
    return TextFormField(
      style: TextStyle(
        color: Colors.white60,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.white60,
        ),
        filled: true,
        fillColor: Colors.red[600],
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white70),
        helperText: '',
        errorStyle: TextStyle(color: Colors.white70),
        hasFloatingPlaceholder: false,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      controller: _passwordController,
      obscureText: true,
      keyboardType: TextInputType.text,
      maxLines: 1,
      validator: _validatePassword,
    );
  }

  String _validatePassword(String value) {
    if (value.isEmpty) return 'Enter password';

    return null;
  }

  Widget _buttomForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FlatButton(
          child: Text(
            'Forgot password',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Forgot password',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buttomLogin() {
    return RaisedButton(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.34,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      color: Colors.white,
      child: Text(
        'Sing In',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        side: BorderSide(
          color: Colors.blueGrey,
        ),
      ),
      onPressed: () => _validateButtomLogin(),
    );
  }

  void _validateButtomLogin() {
    final form = _formKey.currentState;
    if (form.validate()) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Processing Data',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      form.save();
    } else {
      setState(() => _autoValidate = true);
    }
  }

  Widget _buttomCreate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'New to chipper?',
          style: TextStyle(color: Colors.white70),
        ),
        FlatButton(
          child: Text(
            'Create an account',
            style:
                TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Create an account',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.05,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.05,
              ),
              child: _logoHeader(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01,
              ),
              child: _fieldEmail(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.00,
              ),
              child: _fieldPassword(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.00,
              ),
              child: _buttomForgot(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.048,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.00,
              ),
              child: _buttomLogin(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.00,
              ),
              child: _buttomCreate(),
            ),
          ],
        ),
      ),
    );
  }
}
