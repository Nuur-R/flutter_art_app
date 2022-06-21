import 'package:flutter/material.dart';
import 'package:flutter_art_app/screen/main-screen.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Text('Welcome'),
          ),
          RaisedButton(
            child: Text('Go to Main Screen'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
