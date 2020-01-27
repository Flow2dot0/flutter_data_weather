import 'package:flutter/material.dart';
import 'package:flutter_data_weather/screens/result_screen_arguments.dart';
import 'package:flutter_data_weather/tools/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultScreen extends StatefulWidget {
  static const routeName = '/result';

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final ResultScreenArguments args =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/sun.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              MyResultCard(
                child: Text(
                  'Manchester',
                  style: kCityTextStyle,
                ),
              ),
              MyResultCard(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MyDataCard(
                      iconData: FontAwesomeIcons.temperatureLow,
                      iconColor: Colors.blue,
                      iconSize: 50.0,
                      label: '10.0 °C',
                      labelSize: 14.0,
                    ),
                    MyDataCard(
                      iconData: FontAwesomeIcons.thermometerEmpty,
                      iconColor: Colors.white,
                      iconSize: 60.0,
                      label: '10.0 °C',
                      labelSize: 18.0,
                    ),
                    MyDataCard(
                      iconData: FontAwesomeIcons.temperatureHigh,
                      iconColor: Colors.red,
                      iconSize: 50.0,
                      label: '10.0 °C',
                      labelSize: 14.0,
                    ),
                  ],
                ),
              ),
              MyResultCard(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    MyDataCard(
                      iconData: FontAwesomeIcons.temperatureLow,
                      iconColor: Colors.blue,
                      iconSize: 40.0,
                      label: '10.0 °C',
                      labelSize: 10.0,
                    ),
                    MyDataCard(
                      iconData: FontAwesomeIcons.temperatureLow,
                      iconColor: Colors.blue,
                      iconSize: 40.0,
                      label: '10.0 °C',
                      labelSize: 10.0,
                    ),
                    MyDataCard(
                      iconData: FontAwesomeIcons.temperatureLow,
                      iconColor: Colors.blue,
                      iconSize: 40.0,
                      label: '10.0 °C',
                      labelSize: 10.0,
                    ),
                    MyDataCard(
                      iconData: FontAwesomeIcons.temperatureLow,
                      iconColor: Colors.blue,
                      iconSize: 40.0,
                      label: '10.0 °C',
                      labelSize: 10.0,
                    ),
                    MyDataCard(
                      iconData: FontAwesomeIcons.temperatureLow,
                      iconColor: Colors.blue,
                      iconSize: 40.0,
                      label: '10.0 °C',
                      labelSize: 10.0,
                    ),
                  ],
                ),
              ),
              MyResultCard(
                child: Center(
                  child: Text(
                    'Main Description',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              ),
              MyResultCard(
                child: Icon(
                  FontAwesomeIcons.sun,
                  color: Colors.white,
                  size: 100.0,
                ),
              ),
              MyResultCard(
                child: Center(
                  child: Text(
                    '"Small Description"',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDataCard extends StatelessWidget {
  final double iconSize;
  final Color iconColor;
  final IconData iconData;
  final String label;
  final double labelSize;

  const MyDataCard(
      {Key key,
      this.iconSize,
      this.iconColor,
      this.label,
      this.labelSize,
      this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          color: iconColor,
          size: iconSize,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: labelSize,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class MyResultCard extends StatelessWidget {
  final Widget child;

  MyResultCard({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 2.0, color: Color(0xFFFFFFFFFF)),
              left: BorderSide(width: 2.0, color: Color(0xFFFFFFFFFF)),
              right: BorderSide(width: 2.0, color: Color(0xFFFFFFFFFF)),
              bottom: BorderSide(width: 2.0, color: Color(0xFFFFFFFFFF)),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
