import 'package:flutter/material.dart';
import 'package:okcredit/views/ledger/widgets/user-card.dart';
import 'package:okcredit/views/widgets/custom_fab_widget.dart';



class Ledger extends StatefulWidget {
  const Ledger({Key? key}) : super(key: key);

  @override
  _LedgerState createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {

  int tabIndex = 0 ;

  List<Map> addUserType= [
    {
      "title" : "Add Customer"
    },
    {
      "title" : "Add Supplier"
    }
  ];

  List Customers = [
    {
      "name"  : "user1",
      "date"  : "12 Nov, 2021",
      "due"   : "0",
    },
    {
      "name"  : "user2",
      "date"  : "14 Nov, 2021",
      "due"   : "1000",
    },
    {
      "name"  : "user3",
      "date"  : "15 Nov, 2021",
      "due"   : "901",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          bottom:  TabBar(
            onTap: (index){
              setState(() {
                tabIndex = index ;
              });
            },
            tabs: const [
              Tab(text: "CUSTOMER",),
              Tab(text: "SUPPLIER",),

            ],
          ),
          title: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white38,

              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search_rounded),
                Text("Search or Add"),
                Icon(Icons.qr_code_scanner),

              ],
            ),
          ),
        ),
        body:   TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  UserCard(user : Customers[0]),
                  Divider(height: 2,),
                  UserCard(user : Customers[1]),
                  Divider(height: 3,),
                  UserCard(user : Customers[2])
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  UserCard(user : Customers[0]),
                  Divider(height: 2,),
                  UserCard(user : Customers[1]),
                  Divider(height: 3,),
                  UserCard(user : Customers[2])
                ],
              ),
            ),

          ],
        ),
        floatingActionButton:CustomFabWidget(userType : addUserType[tabIndex]),

      ),
    );
  }
}
