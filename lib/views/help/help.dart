import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("HELP & SUPPORT"),
        centerTitle: true,
      ),
      body: Center(
        child: Icon(
          Icons.help,
          size: 300,
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
    );
  }
}
