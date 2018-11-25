import 'package:flutter/material.dart';
import 'package:cis_test/LoginPage.dart';
import 'package:cis_test/ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.light(),
      title: "VIIT CIS",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) => new LoginPage(),
        '/ProfilePage': (BuildContext context) => new ProfilePage()
      },
    );
  }
}
