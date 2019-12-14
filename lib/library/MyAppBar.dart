import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int height = 50;
  MyAppBar({this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      leading: Container(),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 1.3),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.add_circle,
            size: 38,
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(50, 50);
}
