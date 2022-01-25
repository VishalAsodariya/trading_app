// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:trading_app/categories.dart';
import 'package:trading_app/transaction_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Total Balance"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF00ef9e),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              tileColor: Color(0xFF00c982),
              title: const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "\$12.988.50",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "+\$2.566.00",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.do_not_disturb_on,
                      color: Color(0xFF00ef9e),
                      size: 8,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "18.00%",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Color(0xFFa75fff),
                          elevation: 10,
                          child: SizedBox(
                            height: 200,
                            width: 300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Color(0xFF2d2d2d),
                          elevation: 10,
                          child: SizedBox(
                            height: 200,
                            width: 350,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 40, right: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jakob Kenter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                  size: 30,
                                ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            children: const [
                              Text(
                                "\$2.600.50",
                                style: TextStyle(
                                    color: Color(0xFF00ef9e),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    LineIcon(
                                      LineIcons.bitcoin,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "0.508 BTC",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  LineIcon(
                                    LineIcons.bitcoin,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "0.320 BTC",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transaction",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Icon(
                      Icons.sort,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: TransactionHistory(
                    transName: 'transName',
                    amount: 'amount',
                    place: 'place',
                    percentage: 'percentage'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 22.0, right: 22.0, bottom: 22.0),
                child: TransactionHistory(
                    transName: 'transName',
                    amount: 'amount',
                    place: 'place',
                    percentage: 'percentage'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                child: TransactionHistory(
                    transName: 'transName',
                    amount: 'amount',
                    place: 'place',
                    percentage: 'percentage'),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF00ef9e)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Show History",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
