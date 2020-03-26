import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const String _title = 'Warung BABE';
  var menuLists = [
    "assets/ic_Bantuan.png",
    "assets/ic_Deposit.png",
    "assets/ic_Mutasi.png",
    "assets/ic_Transfer.png"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              tooltip: 'See your notifications',
              onPressed: () {},
            )
          ],
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.purple,
              child: Container(
                margin: EdgeInsets.fromLTRB(15,15,15,15),
                padding: EdgeInsets.fromLTRB(2,0,2,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(5,2,2,2),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: Colors.orange,
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text("Rp 1.234.567"),
                          IconButton(
                            icon: Icon(Icons.replay),
                            tooltip: 'Update your deposit balance',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(6),
                            child: Text("P", style: TextStyle( color: Colors.white)),
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent, 
                              shape: BoxShape.circle
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(2,2,2,2)),
                          Text("100"),
                          Padding(padding: EdgeInsets.fromLTRB(5,2,2,2)),
                        ],
                      )
                    )
                  ]
                ),
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(10.0)
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              padding: EdgeInsets.fromLTRB(10,10,10,20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  for (var menu in menuLists)
                    ImageIcon(
                      AssetImage(menu), 
                      color: Colors.white, 
                      size: 24
                    )
                ]
              )
            ),
            Container()
          ]
        ),
      ),
    );
  }
}
