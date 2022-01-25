// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trading_app/home.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Background.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              )),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    "Manage",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  Text(
                    "crypto",
                    style: TextStyle(
                      color: Color(0xFF00ef9e),
                      fontSize: 60,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  Text(
                    "assets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  Text(
                    "more",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  Text(
                    "easily",
                    style: TextStyle(
                      color: Colors.purple[300],
                      fontSize: 60,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        alignment: Alignment.bottomCenter,
                        child: FloatingActionButton(
                          backgroundColor: Color(0xFF00ef9e),
                          foregroundColor: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Icon(Icons.arrow_forward),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
