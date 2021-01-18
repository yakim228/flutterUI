import 'package:flutter/material.dart';
import 'Overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xFFECEFF1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Row(children: <Widget>[
              Builder(
                  builder: (context) => IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      color: Colors.black)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'Overview',
                  style: TextStyle(
                      fontFamily: "Imbue", fontSize: 25.0, color: Colors.black),
                ),
              ),
            ])),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Text(""),
            ),
            ListTile(
                leading: Icon(Icons.message),
                title: Text('Overview'),
                onTap: () {
                  Navigator.of(context).pop();
                }),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Overview()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Overview(),
    ));
  }
}
