/*
townsend
IP 2020 to below developers. Made at ShellHacks 2020.

UX: Chris Gooding, with Manasm Hapuskar, Kimly Tor
Backend: Manasm Hapuskar
Project Lead: Kimly Tor

*/
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/FindSchools": (BuildContext context) => new FindSchools()
      }
    );
  }
}
///////////// HOME PAGE
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

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
            onPressed: () => _openDrawer
          ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.account_circle), color: Colors.black, iconSize: 20.0, onPressed: () => _openEndDrawer
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
        body: ListView(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          children: <Widget>[
            Container(
              height: 125.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10.0),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: Colors.orange),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          )),
                      SizedBox(height: 7.0),
                      Text('Add To',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                  SizedBox(width: 25.0),
                  listItem('assets/chris.jpg', 'Chris', true),
                  SizedBox(width: 25.0),
                  listItem('assets/hugh.jpg', 'Hugh', false),
                  SizedBox(width: 25.0),
                  listItem('assets/johnnydepp.jpg', 'Depp', false),
                  SizedBox(width: 25.0),
                  listItem('assets/tomcruise.jpg', 'Tom', false),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            firstStyleRow('assets/cone.jpeg', 'assets/letter.jpeg', 'assets/chris.jpg'),
            SizedBox(height: 10.0),
            secondStyleRow('assets/window.jpeg', 'assets/cactus.jpeg', 'assets/tomcruise.jpg'),
            SizedBox(height: 10.0),
            infoRow(),
            SizedBox(height: 15.0),
            firstStyleRow('assets/cone.jpeg', 'assets/letter.jpeg', 'assets/chris.jpg'),
            SizedBox(height: 10.0),
            secondStyleRow('assets/window.jpeg', 'assets/cactus.jpeg', 'assets/tomcruise.jpg'),
            SizedBox(height: 10.0),
            infoRow(),
            SizedBox(height: 15.0),
            firstStyleRow('assets/cone.jpeg', 'assets/letter.jpeg', 'assets/chris.jpg'),
            SizedBox(height: 10.0),
            secondStyleRow('assets/window.jpeg', 'assets/cactus.jpeg', 'assets/tomcruise.jpg'),
            SizedBox(height: 10.0),
            infoRow(),
          ],
        )
    );
  }
////////////// HOME PAGE WIDGETS
  Widget infoRow() {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/chris.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Mona Hall',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.orange),
                            ),
                            Text(
                              '10:51PM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
            SizedBox(width: 10.0),
            Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/tomcruise.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Mona Hall',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.orange),
                            ),
                            Text(
                              '10:51PM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
          ],
        )
    );
  }


  Widget secondStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath2), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: <Widget>[
                Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage(avatarImg), fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 42.0),
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath1), fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget firstStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
        height: 250.0,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
            children: [
              Container(
                  height: 250.0,
                  width: (MediaQuery.of(context).size.width - 30.0) /2,
                  child: Column(
                      children: [
                        Container(
                          height: 125.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(imgPath1),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text('I like the way to place Items to show more...',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Montserrat'
                            )
                        ),
                        SizedBox(height: 15.0),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      image: DecorationImage(
                                          image: AssetImage(avatarImg)
                                      )
                                  )
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Mona Hall',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat', color: Colors.orange),
                                  ),
                                  Text(
                                    '10:51PM',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat', color: Colors.grey),
                                  ),
                                ],
                              )
                            ]
                        )
                      ]
                  )
              ),
              SizedBox(width: 10.0),
              Container(
                  height: 250.0,
                  width: (MediaQuery.of(context).size.width - 30.0) /2,
                  child: Container(
                      height: 250.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage(imgPath2),
                              fit: BoxFit.cover
                          )
                      )
                  )
              )
            ]
        )
    );
  }

  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover)),
        ),
        SizedBox(height: 7.0),
        Row(
          children: <Widget>[
            Text(name,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 4.0),
            available
                ? Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.orange),
            )
                : Container()
          ],
        )
      ],
    );
  }

}

///////////////// MENU PAGE - essentially useless since i switched to a drawer but keep it until Manas is on
class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
  }
class _MenuPageState extends State<MenuPage>
{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> pages = <String>['PROGRESS', 'FIND SCHOOLS', 'APPLICATION RESOURCES', 'FIND A MENTOR', 'YOUR PROFILE'];
  final List<Icon> corrIcons = <Icon>[Icon(Icons.panorama_fish_eye), Icon(Icons.school), Icon(Icons.library_books), Icon(Icons.people_outline), Icon(Icons.folder)];

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
  Widget build(BuildContext context)
  {
    return Scaffold(
      /////// Top Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
            'MENU PAGE',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black)
        ),
        centerTitle: true,

        ////top bar buttons
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 20.0,
          onPressed: () {Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => MenuPage()
              )
          );},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            color: Colors.black,
            iconSize: 20.0,
            onPressed: () {Navigator.pop(context);},
          ),
          ],
        ),
       // body:
    );

  }
}

///////////////// FIND SCHOOLS PAGE
class FindSchools extends StatefulWidget {
  @override
  _FindSchoolsState createState() => _FindSchoolsState();
}

class _FindSchoolsState extends State<FindSchools>
{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> names = <String>['College One', 'College Two', 'University One'];
  List<Color> colors = <Color>[Colors.redAccent, Colors.blue, Colors.yellowAccent];
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
  Widget build(BuildContext context)
  {
    return Scaffold(
      /////// Top Bar
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'FIND SCHOOLS',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black)
          ),
          centerTitle: true,

          ////top bar buttons
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            iconSize: 20.0,
            onPressed: () {Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => MenuPage()
                )
            );},
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.account_circle),
          color: Colors.black,
          iconSize: 20.0,
          onPressed: () {},
          ),
        ],
      ),

    );

  }
}

class EachList extends StatelessWidget{
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(child: Icon(Icons.school),),
            new Padding(padding: EdgeInsets.only(right: 10.0)),
            new Text(name,style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

}

////// APPLICATION RESOURCES

class ApplicationsHome extends StatefulWidget {
  ApplicationsHome({Key key}) : super(key: key);
  @override
  _ApplicationsHome createState() => _ApplicationsHome();
}

class _ApplicationsHome extends State<ApplicationsHome> {
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
        'APPLICATION RESOURCES',
        style: TextStyle(
        fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
    ),
    centerTitle: true,
    leading: IconButton(
    icon: Icon(Icons.menu),
    color: Colors.black,
    iconSize: 20.0,
        onPressed: () => _openDrawer
    ),
    actions: <Widget>[
    IconButton(icon: Icon(Icons.account_circle), color: Colors.black, iconSize: 20.0, onPressed: () => _openEndDrawer
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

    );


  }


}


////// FIND MENTOR CLASS
class FindMentor extends StatefulWidget {
  FindMentor({Key key}) : super(key: key);
  @override
  _FindMentor createState() => _FindMentor();
}

class _FindMentor extends State<FindMentor> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> names = [
    'Abhishek','John','Robert','Shyam', 'Sita','Gita','Nitish'
  ];
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
            'FIND A MENTOR',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              iconSize: 20.0,
              onPressed: () => _openEndDrawer
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.account_circle), color: Colors.black, iconSize: 20.0, onPressed: () => _openEndDrawer()
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

    );


  }


}


//////////// YOURPROFILE
class StuProfile extends StatefulWidget {
  StuProfile({Key key}) : super(key: key);
  @override
  _StuProfile createState() => _StuProfile();
}

class _StuProfile extends State<StuProfile> {
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
            'APPLICATION RESOURCES',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              iconSize: 20.0,
              onPressed: () => _openDrawer
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.account_circle), color: Colors.black, iconSize: 20.0, onPressed: () => _openEndDrawer
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

    );

  }

}


