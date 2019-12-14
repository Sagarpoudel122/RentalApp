import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:page_transition/page_transition.dart';
import 'package:sewaa/models/Property.dart';
import 'package:sewaa/screens/PropertyDetailScreen.dart';
import './Common.dart';

class PropertyIntroCard extends StatelessWidget {
  Widget leftPart(BuildContext context) {
    return Container(
      width: 190,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      // color: Colors.green,
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "The Latitude Condo",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "The Latitude Condo",
            style: TextStyle(color: grey, height: 1.5, fontSize: 13),
          ),
          Text(
            "The Latitude Condo",
            style: TextStyle(color: grey, height: 0.9, fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget rightPart(BuildContext context) {
    return Container(
      width: 60,
      // padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "View",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: white),
          ),
          Text(
            "More",
            style: TextStyle(
                color: white,
                height: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.red[50],
                offset: const Offset(2, 6),
                blurRadius: 10)
          ]),
      child: Row(
        children: <Widget>[leftPart(context), rightPart(context)],
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: PropertyDetailScreen(propertyDetails: propertyDetails)));
      },
      child: Stack(
        children: <Widget>[
          Container(
            height: 260,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: white,
              image: new DecorationImage(
                image: new ExactAssetImage("assets/images/home.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: new BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0)),
              ),
            ),
          ),
          Container(
            height: 260,
            // width: double.infinity,
            decoration: BoxDecoration(color: Color.fromRGBO(33, 33, 33, 0.1)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xff00D171)),
                    height: 30,
                    width: 90,
                    child: Center(
                      child: Text(
                        "INSURED",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.9,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      decoration: new BoxDecoration(
                        border: Border.all(color: white, width: 0.5),
                        borderRadius: new BorderRadius.circular(10.0),
                        color: Colors.transparent,
                      ),
                      height: 30,
                      width: 105,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today,
                            size: 18,
                            color: white,
                          ),
                          Text(
                            "2018/10/12",
                            style: TextStyle(fontSize: 13, color: white),
                          )
                        ],
                      )),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: PropertyIntroCard(),
                ),
                Positioned(
                  bottom: 80,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    decoration: new BoxDecoration(
                      border: Border.all(color: primaryColor, width: 0),
                      borderRadius: new BorderRadius.circular(10.0),
                      color: primaryColor,
                    ),
                    height: 30,
                    width: 75,
                    child: Center(
                      child: Text(
                        "VACANT",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PropertyCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: const Offset(2, 6),
                blurRadius: 10)
          ]),
      height: 110,
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Mallan Villas",
                style: prefix0.TextStyle(
                    fontSize: 22,
                    color: Color(0xFF465C61),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Rental Date: 5th Monthly",
                style: prefix0.TextStyle(
                  fontSize: 14,
                  color: Color(0xFF94979C),
                  height: 1.8,
                ),
              ),
              Text(
                "Block-12, Level-6, Unit-6",
                style: prefix0.TextStyle(
                  fontSize: 14,
                  height: 1,
                  color: Color(0xFF94979C),
                ),
              ),
              Text(
                "Past Due: 20 April 2015",
                style: prefix0.TextStyle(
                  fontSize: 14,
                  color: Color(0xFF94979C),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PropertyDetailCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PropertyDetailCard({Key key, this.image, this.title, this.description})
      : super(key: key);
  Widget PropertyDetailIntroCard() {
    return Container(
      height: 80,
      width: 200,
      padding: EdgeInsets.only(top: 5, left: 5, right: 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: const Offset(2, 6),
                blurRadius: 10)
          ]),
      child: Column(
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Padding(
              padding: EdgeInsets.only(left: 5, top: 5),
              child: Text(description,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w900)))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 260,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: white,
            image: new DecorationImage(
              image: new ExactAssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: new BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
            child: new Container(
              decoration: new BoxDecoration(color: Colors.white.withOpacity(0)),
            ),
          ),
        ),
        Container(
          height: 260,
          // width: double.infinity,
          decoration: BoxDecoration(color: Color.fromRGBO(33, 33, 33, 0.1)),
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 30,
                right: 0,
                child: PropertyDetailIntroCard(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
