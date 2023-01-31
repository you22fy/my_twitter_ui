import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_twitter_ui/model/tweet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Image.asset('images/my_icon_image.png'),
        ),
        title: FaIcon(FontAwesomeIcons.twitter, color: Colors.blue),
        actions: <Widget>[
          IconButton(
              onPressed: () => print("The button has pressed"),
              icon: Icon(Icons.auto_awesome_outlined, color: Colors.black))
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [Text('first'), Text('second')],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: ""),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      drawer: Drawer(child: Center(child: Text('drawer'))),
    );
  }
}
