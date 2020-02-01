import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget child;

  ContentCard({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.cyan.shade900,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
                spreadRadius: 1.0,
                offset: Offset(2.0, 2.0),
              )
            ]),
        child: child);
  }
}
