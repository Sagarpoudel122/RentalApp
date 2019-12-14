import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sewaa/library/Common.dart';
import 'package:sewaa/screens/HomeScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

Widget input({String labelText, String hintText}) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, bottom: 5),
          child: Text(
            labelText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8, bottom: 15),
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(80),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(80),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0.0),
              ),
              // disabledBorder: new InputBorder(borderSide: BorderSide.none),
              hintStyle: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
              filled: true,
              fillColor: darkGrey,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17, vertical: 12),

              hintText: hintText,
            ),
          ),
        ),
      ],
    ),
  );
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: null,
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: <Widget>[
              AnimatedContainer(
                height: MediaQuery.of(context).size.height,
                duration: Duration(milliseconds: 5),
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        input(labelText: "First Name", hintText: "Sagar"),
                        input(labelText: "Last Name", hintText: "Poudel")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        input(labelText: "Email", hintText: "sagar@sewaa.com"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        input(labelText: "Mobile", hintText: "9847252863"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        input(labelText: "Password", hintText: "********"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        input(
                            labelText: "Confirm Password",
                            hintText: "********"),
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 45,
                        child: RaisedButton(
                          // padding: EdgeInsets.only(bottom: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(35.0)),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    type: PageTransitionType.downToUp,
                                    child: HomeScreen()));
                          },
                          color: primaryColor,
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Register",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "By Sign up, you agree our ",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12, fontStyle: FontStyle.italic),
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(left: 5),
                          onPressed: () {},
                          child: Text(
                            "Terms and Condition",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                color: primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    // input(labelText: "Mobile", hintText: "dave@gmail.com"),
                  ],
                ),
              ),
              Positioned.fill(
                bottom: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Divider(
                        height: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have a account?",
                            style: TextStyle(),
                          ),
                          FlatButton(
                            padding: EdgeInsets.only(right: 20),
                            onPressed: () {},
                            child: Text(
                              "Login ",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
