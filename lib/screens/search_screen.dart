import 'package:flutter/material.dart';
import 'package:flutter_data_weather/tools/constants.dart';
import 'package:flutter_data_weather/widgets/content_card.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // to get the TextField Input
  String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/search.jpg'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 50.0,
                  ),
                ),
              ),
              ContentCard(
                child: TextField(
                  decoration: kTextFieldInputDecoration,
                  onChanged: (String s) {
                    cityName = s;
                  },
                ),
              ),
              ContentCard(
                child: IconButton(
                  icon: Icon(
                    FontAwesome.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // return to the parent ancestor the [cityName]
                    Navigator.pop(context, cityName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
