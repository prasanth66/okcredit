import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key,@required this.details}) : super(key: key);
  final details ;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      decoration: InputDecoration(
        prefixIcon:  Icon(widget.details["icon"], color: Colors.green,),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintText: widget.details["label"],
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.green,
            width: 1.0,

          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
