import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final picture = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 50.0,
        child: Image.asset('assets/profile_placeholder.png',
            height: 250.0, fit: BoxFit.cover),
      ),
    );

    final name = Text(
      'Name of the User',
      style: TextStyle(fontSize: 24.0),
    );

    final details = Card(
      elevation: 4.0,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 18.0, right: 18.0),
        children: <Widget>[
          Text('Text'),
        ],
      ),
    );

    final navigationDrawer = Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Image.asset("assets/profile_placeholder.png"),
              ),
              accountName: Text('User Name here'),
              accountEmail: Text('User ID Here')),
          SizedBox(
            height: 4.0,
          ),
          ListTile(
            title: Text('Home'),
            enabled: true,
            onTap: () {},
          ),
          ListTile(
            title: Text('Academic Record'),
            enabled: true,
            onTap: () {},
          ),
          ListTile(
            title: Text('Attendance'),
            enabled: true,
            onTap: () {},
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("VIIT CIS"),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 10.0),
          Center(child: picture),
          SizedBox(height: 10.0),
          Center(child: name),
          SizedBox(height: 10.0),
          Center(child: details)
        ],
      ),
      drawer: navigationDrawer,
    );
  }
}
