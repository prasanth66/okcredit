import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:okcredit/views/add_user/add_user.dart';

class CustomFabWidget extends StatefulWidget {
  const CustomFabWidget({Key? key,@required this.userType}) : super(key: key);
  final  userType;

  @override
  _CustomFabWidgetState createState() => _CustomFabWidgetState();
}

class _CustomFabWidgetState extends State<CustomFabWidget> {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: Duration(milliseconds: 800),
      openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
        return AddUser(userType: widget.userType,);
      },
      closedBuilder: (BuildContext context, VoidCallback openContainer) {
        return FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: openContainer,
          icon: Icon(Icons.group_add),
          label: Text(
            widget.userType["title"]??"add"
          ),
        );
      },

    );
  }
}
