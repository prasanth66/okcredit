import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:okcredit/views/widgets/custom_submit_button.dart';
import 'package:okcredit/views/widgets/custom_textfield.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key,@required this.userType}) : super(key: key);
  final userType ;

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  List textFieldDetails = [
    {
      "label" : "Name",
      "icon"  : Icons.person
    },
    {
      "label" : "Mobile Number - Optional",
      "icon"  : Icons.phone
    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "${widget.userType["title"]} Manually"
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20,),
            CustomTextField(details: textFieldDetails[0],),
            SizedBox(height: 20,),
            CustomTextField(details: textFieldDetails[1],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.contact_phone_sharp,color: Colors.green,),
                SizedBox(width: 10,),
                Text("Add from contacts",style: TextStyle(color: Colors.green,),)
              ],
            )

          ],
        ),
      ),
      floatingActionButton: CustomSubmitButton(),

    );
  }
}
