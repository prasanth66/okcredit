import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key,@required this.user}) : super(key: key);
  final user;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [

            Hero(
              transitionOnUserGestures: true,
              tag: widget.user["name"],
              child: Icon(Icons.face,size: 40,color: Colors.amber.withOpacity(0.7),),
            ),
            SizedBox(width: 5,),
            Hero(
                transitionOnUserGestures: true,
                tag: "${widget.user["name"]}s",
                child: Material(
                  color: Colors.green,
                  child: Text(
                    widget.user["name"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                )
            ),
          ],

        ),
        actions: [
          Icon(Icons.chat),
          SizedBox(width: 6,),
          Icon(Icons.phone),
          SizedBox(width: 6,),
          Icon(Icons.help),
          SizedBox(width: 6,),
        ],
      )
    );
  }
}
