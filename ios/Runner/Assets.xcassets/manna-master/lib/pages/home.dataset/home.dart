import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manna...'),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          RaisedButton(
            child: Text('Login'),
            onPressed: () {
              Navigator.pushNamed(context, '/person');
            },
          ),
        ]),
      ),
    );
  }
}
