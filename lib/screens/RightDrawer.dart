///// file for each class template
import 'package:flutter/material.dart';

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }
  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }
  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
        'HOME',
        style: TextStyle(
        fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
    ),
      centerTitle: true,
      leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            iconSize: 20.0,
            onPressed: _openEndDrawer();
            ),
          actions: <Widget>[
              IconButton(icon: Icon(Icons.account_circle), color: Colors.black, iconSize: 20.0, onPressed: _openEndDrawer()
              ),
              ]
            ),
        drawer: Drawer(
             child: Center(
              child: ListView(
                padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: Text(
                          'MENU',
                          style: TextStyle(fontFamily: 'Montserrat', color: Colors.white, fontSize: 25),
                      ),
                  decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/cover.jpg'))),
                    ),
        ListTile(
    leading: Icon(Icons.home),
    title: Text('home',
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
    ),
    onTap: () => {},
    ),
    ListTile(
    leading: Icon(Icons.panorama_fish_eye),
    title: Text(
    'progress',
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
    ),
    onTap: () => {Navigator.of(context).pop()},
    ),
    ListTile(
    leading: Icon(Icons.school),
    title: Text('find schools',
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
    ),
    onTap: () => {Navigator.of(context).pop()},
    ),
    ListTile(
    leading: Icon(Icons.library_books),
    title: Text('application resources',
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
    ),
    onTap: () => {Navigator.of(context).pop()},
    ),
    ListTile(
    leading: Icon(Icons.people_outline),
    title: Text('find a mentor',
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
    ),
    onTap: () => {Navigator.of(context).pop()},
    ),
    ListTile(
    leading: Icon(Icons.folder),
    title: Text('your profile',
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
    ),
    onTap: () => {Navigator.of(context).pop()},
    ),
    ],
    ),
    ),
    ),
    drawerEnableOpenDragGesture: false,

    endDrawer: Drawer(
    child: Center(
    child: Column(
    children: <Widget>[
    Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    color: Theme.of(context).primaryColor,
    child: Center(
    child: Column(
    children: <Widget>[
    Container(
    width: 100,
    height: 100,
    margin: EdgeInsets.only(
    top: 30,
    bottom: 10,
    ),
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(image: NetworkImage(
    'https://media-exp1.licdn.com/dms/image/C4E03AQFCgACrTJn14g/profile-displayphoto-shrink_200_200/0?e=1606953600&v=beta&t=noLAu9OGekDdPDsjqGMvEOs3t70FIBqlLYOvib8huLU'
    ),
    fit: BoxFit.fill
    ),
    ),
    ),
    Text('Chris Gooding',
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 22.0, color: Colors.white,
    ),
    ),
    Text('chris@townsend.tech',
    style: TextStyle(fontFamily: 'Montserrat', color: Colors.white,
    ),
    ),
    ],
    ),
    ),
    ),
    ListTile(
    leading: Icon(Icons.edit),
    title: Text('edit information', style: TextStyle(fontSize: 18, fontFamily: 'Montserrat',
    ),
    ),
    onTap: null,
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text('settings', style: TextStyle(fontSize: 18, fontFamily: 'Montserrat',
    ),
    ),
    onTap: null,
    ),
    ListTile(
    leading: Icon(Icons.arrow_back),
    title: Text('log out', style: TextStyle(fontSize: 18, fontFamily: 'Montserrat',
    ),
    ),
    onTap: null,
    ),
    ],
    ),
    ),
    ),

    endDrawerEnableOpenDragGesture: false,