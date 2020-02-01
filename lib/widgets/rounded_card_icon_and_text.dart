import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedCardIconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final Color backgroundColor;
  final SizeMode sizeMode;
  double iconSize;
  double textSize;
  double padding;

  RoundedCardIconAndText({
    @required this.icon,
    @required this.text,
    this.sizeMode = SizeMode.medium,
    this.iconColor = Colors.white,
    this.iconSize = 30.0,
    this.textSize = 14.0,
    this.textColor = Colors.white,
    this.padding = 25.0,
    this.backgroundColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    if (sizeMode == SizeMode.small) {
      iconSize /= 1.25;
      textSize /= 1.25;
      padding /= 1.25;
    } else if (sizeMode == SizeMode.large) {
      iconSize *= 2;
      textSize *= 2;
      padding *= 1.25;
    }

    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5.0,
              spreadRadius: 1.0,
              offset: Offset(2.0, 2.0),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            text,
            style: GoogleFonts.coda(
              textStyle: TextStyle(color: textColor, fontSize: textSize),
            ),
          ),
        ],
      ),
    );
  }
}

enum SizeMode { small, medium, large }
