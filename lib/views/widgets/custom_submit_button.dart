import 'package:flutter/material.dart';

class CustomSubmitButton extends StatefulWidget {
  const CustomSubmitButton({Key? key}) : super(key: key);

  @override
  _CustomSubmitButtonState createState() => _CustomSubmitButtonState();
}

class _CustomSubmitButtonState extends State<CustomSubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width ,
      child: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: () {},
        label: Text("Confirm"),
      ),
    );
  }
}
