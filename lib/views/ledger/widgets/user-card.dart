import 'package:flutter/material.dart';
import 'package:okcredit/views/profile/profile.dart';

class UserCard extends StatefulWidget {
  const UserCard({Key? key, @required this.user}) : super(key: key);
  final user ;

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 1000),
                pageBuilder: (_, __, ___) => Profile(user:widget.user)));

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Profile(user:widget.user)),
        // );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(3, 8, 3, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Hero(
                    transitionOnUserGestures: true,
                    tag: widget.user["name"],
                    child: Icon(Icons.face,size: 50,color: Colors.amber.withOpacity(0.7),)),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      transitionOnUserGestures: true,
                      tag: "${widget.user["name"]}s",
                      child: Text(
                          widget.user["name"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                    Text(widget.user["date"],style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    " RS.${widget.user["due"]}",
                  style: TextStyle(
                    color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text(
                  "DUE",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
