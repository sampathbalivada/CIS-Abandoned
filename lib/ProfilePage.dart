import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfilePage extends StatefulWidget {
  @override
  createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  Map<String, String> data = {
    'id': '17L31A05T8',
    'phone': '9182163905',
    'email': 'balivadask2000@gmail.com',
    'dob': '21-02-2000',
    'aadhar': '9033-2XX8-2XX7'
  };

  @override
  Widget build(BuildContext context) {
    final picture = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 50.0,
        child: CachedNetworkImage(
          //TODO - Insert user profile image URL here
          imageUrl:
              'https://propertymarketersllc.com/wp-content/uploads/2018/05/profile-picture-placeholder.png',
          //Placeholder profile image inserted - Google Logo
          placeholder: CircularProgressIndicator(),
        ),
      ),
    );

    final name = Text(
      'Name of the User',
      style: TextStyle(fontSize: 24.0),
    );

    final details = Card(
        elevation: 4.0,
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          defaultColumnWidth: IntrinsicColumnWidth(flex: 1.0),
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      'ID',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      data['id'].toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ]),
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      'E-Mail',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      data['email'].toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      'Mobile',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      data['phone'].toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text('DOB', style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(data['dob'].toString(), style: TextStyle(fontSize: 18),),
                  ],
                ),
              )
            ]),
            TableRow(children: [
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text('Aadhar No', style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              TableCell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(data['aadhar'].toString(), style: TextStyle(fontSize: 18),),
                  ],
                ),
              )
            ]),
          ],
        ));

    final navigationDrawer = Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color(int.parse("ff004b99", radix: 16))),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: CachedNetworkImage(
                  //TODO - Insert user profile image URL here
                  imageUrl:
                      'https://propertymarketersllc.com/wp-content/uploads/2018/05/profile-picture-placeholder.png',
                  //Placeholder profile image inserted - Google Logo
                  placeholder: CircularProgressIndicator(),
                ),
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

    final logout = Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              elevation: 4.0,
              height: 42.0,
              onPressed: () {
//                Navigator.of(context).popUntil((Route r) => r == null);
                Navigator.of(context).pushNamed("/LoginPage");
              },
              color: Colors.white,
              child: Row(children: <Widget>[
                Icon(
                    IconData(0xe14a,
                        fontFamily: 'MaterialIcons', matchTextDirection: true),
                    color: Colors.red),
                SizedBox(width: 5.0),
                Text('Log Out', style: TextStyle(color: Colors.red)),
              ]),
            )));

    return Scaffold(
      appBar: AppBar(
        title: Text("VIIT CIS", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 10.0),
          Center(child: picture),
          SizedBox(height: 10.0),
          Center(child: name),
          SizedBox(height: 10.0),
          Center(child: details),
          SizedBox(height: 10.0),
          Center(child: logout)
        ],
      ),
      drawer: navigationDrawer,
    );
  }
}
