import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

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
          padding: EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      color: Colors.cyan,
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
                  Center(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.bottomCenter,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.arrow_forward),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                          ),
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   child: Text("data"),
                          // ),
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
