import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trading_app/card.dart';
import 'package:trading_app/detail_save.dart';
import 'package:trading_app/transaction_card.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Categories"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                body_Card(iconName: "Rent"),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: body_Card(iconName: "Helth"),
                ),
                body_Card(iconName: "Food"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                children: [
                  DetailSave(
                      saveName: 'Save Address',
                      date: '15 Dec',
                      place: 'Hwy East Bernstadt,',
                      place2: 'Kentucky, KY')
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Row(
              children: [
                DetailSave(
                    saveName: 'Monthly Fee',
                    date: '10 Nov',
                    place: 'We have set a monthly',
                    place2: 'payment reminder')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saved Transactions',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  Icon(
                    Icons.sort,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 159,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Row(
                        children: [
                          TransactionCard(),
                          TransactionCard(),
                          TransactionCard(),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
