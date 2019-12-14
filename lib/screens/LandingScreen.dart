import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sewaa/screens/LoginScreen.dart';
import 'package:sewaa/screens/RegisterScreen.dart';

import '../library/Common.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/home.jpeg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
            child: null),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 52, 65, 0.95),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(
                        AntDesign.getIconData("home"),
                        color: white,
                        size: 40,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: RichText(
                          text: TextSpan(
                            semanticsLabel: "hjk",
                            text: 'SEWAA \n',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                height: 1.15),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Rental Made Easy',
                                  style: TextStyle(
                                      color: Colors.grey[350],
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 45,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(35.0)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.downToUp,
                                    child: LoginScreen()));
                          },
                          color: white,
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 45,
                      child: RaisedButton(
                        // padding: EdgeInsets.only(bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(35.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.downToUp,
                              child: RegisterScreen(),
                            ),
                          );
                        },
                        color: white,
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Register",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "SEWAA App v 1.0.1",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[350]),
                ),
              ],
            )),
      ],
    ));
  }
}
