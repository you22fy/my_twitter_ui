import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('images/my_icon_image.png'),
        ),
        title: FaIcon(FontAwesomeIcons.twitter),
        actions: <Widget>[
          IconButton(
						onPressed:() => print("The button has pressed"),
						icon: Icon(Icons.auto_awesome))
        ],
      ),
      body: Center(
        child: Image.asset('images/my_icon_image.png'),
      ),
    );
  }
}
