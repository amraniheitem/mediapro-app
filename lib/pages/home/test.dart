import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/dp-formal.jpeg'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 12, 0, 7),
                    child: Text(
                      'Devang Arora',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Pacifico',
                        fontSize: 35,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'FLUTTER DEVELOPER/CUTIE', //cause you cute Devang
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontSize: 15,
                        letterSpacing: 1,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 25,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '+ 91 8860 870 960',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(18, 10, 0, 10),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.mail_outline,
                          size: 25,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'devangraj.arora@gmail.com',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
