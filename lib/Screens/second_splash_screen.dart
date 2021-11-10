import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'home_screen.dart';
import 'dart:async';

class SecondSplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SecondSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Launch Detection Demo',
                style: TextStyle(fontSize: 50.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SleekCircularSlider(
              appearance: CircularSliderAppearance(
                customColors: CustomSliderColors(
                    dotColor: Colors.white,
                    progressBarColor: Colors.black,
                    shadowColor: Colors.white,
                    trackColor: Colors.white),
                spinnerMode: true,
                animationEnabled: true,
                size: 50.0,
                customWidths:
                    CustomSliderWidths(trackWidth: 10.0, shadowWidth: 5.0),
              ),
              initialValue: 90,
              onChange: (double value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
