import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("SETTINGS"),
        centerTitle: true,
      ),
      body: Center(
        child: Icon(
          Icons.settings,
          size: 300,
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
    );
  }
}
