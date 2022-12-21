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
          radius: 30,
          backgroundColor: Colors.blue,
          backgroundImage: AssetImage('images/my_icon_image.png'),
        ),
        // ignore: prefer_const_constructors
        title: FaIcon(
					FontAwesomeIcons.twitter,
					color: Colors.blue
				),
        actions: <Widget>[
          IconButton(
						onPressed:() => print("The button has pressed"),
      // ignore: prefer_const_constructors
						icon: Icon(
							Icons.auto_awesome,
							color: Colors.black
							))
        ],
				backgroundColor: Colors.white,
      ),
      body: Center(
        child: Image.asset('images/my_icon_image.png'),
      ),

    );
  }
}
