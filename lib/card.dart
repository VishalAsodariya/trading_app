import 'package:flutter/material.dart';

class body_Card extends StatelessWidget {
  final String iconName;
  const body_Card({Key? key, required this.iconName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 120,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Color(0xFF4d4d4d),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
              child: Icon(
                Icons.home,
                color: Color(0xFF00ef9e),
                size: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                iconName,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
