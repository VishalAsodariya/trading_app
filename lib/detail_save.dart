import 'package:flutter/material.dart';

class DetailSave extends StatefulWidget {
  final String saveName;
  final String date;
  final String place;
  final String place2;
  const DetailSave({
    Key? key,
    required this.saveName,
    required this.date,
    required this.place,
    required this.place2,
  }) : super(key: key);

  @override
  State<DetailSave> createState() => _DetailSaveState();
}

class _DetailSaveState extends State<DetailSave> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Icon(
                    Icons.save_alt_rounded,
                    color: Color(0xFF00ef9e),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      widget.saveName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Color(0xFF00ef9e),
                      activeColor: Color(0xFF00a068),
                      inactiveTrackColor: Colors.grey,
                      inactiveThumbColor: Color(0xFF4c4b4b),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(
                    children: [
                      Text(
                        widget.place,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      widget.place2,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
