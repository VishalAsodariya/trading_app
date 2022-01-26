import 'package:flutter/material.dart';
import 'package:trading_app/Onbording.dart';

import 'detail_save.dart';
import 'transaction_card.dart';
import 'transaction_history.dart';
import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onbording(),
    );
  }
}
