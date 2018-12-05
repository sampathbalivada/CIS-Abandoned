import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  createState() => _LoginPage();
}

final gradient = BoxDecoration(
    gradient: LinearGradient(colors: [
      Color(int.parse("ff004b99", radix: 16)),
      Color(int.parse("ff7a60a1", radix: 16))
    ], begin: Alignment.bottomCenter, end: Alignment.topCenter));

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 64.0,
        child: Image.asset('assets/logo.png', height: 250.0, fit: BoxFit.cover),
      ),
    );

    final id = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Login ID',
        hintText: 'Enter your ID',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        //borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        //elevation: 2.0,
        child: MaterialButton(
          elevation: 10.0,
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed('/ProfilePage');
          },
          color: Color(int.parse("ff004b99", radix: 16)),
          child: Text('Log In', style: TextStyle(color: Colors.white)),

        ),
      ),
    );

    final panel = Center(
      child: Card(
        elevation: 6.0,
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 16.0),
            Text("Central Information System",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 18.0),
            id,
            SizedBox(height: 10.0),
            password,
            SizedBox(height: 18.0),
            loginButton,
          ],
        ),
      ),
    );

    return Container(
      decoration: gradient,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 0.0, right: 0.0),
          children: <Widget>[
            logo,
            SizedBox(
              height: 18.0,
            ),
            panel,
          ],
        ),
      ),
    );
  }
}
