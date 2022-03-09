import 'package:felagi/Enhance_Ui_Screens/onboard.dart';
import 'package:flutter/material.dart';

class PreloadContent extends StatefulWidget {
  @override
  _PreloadContentState createState() => _PreloadContentState();
}

/// this file contains the logic of
/// fetchiing pre conents that are essential
/// for the app
class _PreloadContentState extends State<PreloadContent> {
  bool genreLoading = false;
//service locator setup

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1800), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xFF1b1e44),
              Color(0xFF2d3447),
            ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp)),
        child: Scaffold(
            body: Container(
          decoration: BoxDecoration(),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(child: Image.asset("assets/Flogob.png")),
                SizedBox(
                  height: 140,
                ),
                /*Center(
                  child: JumpingDotsProgressIndicator(
                    color: Colors.blue,
                    fontSize: 50.0,
                    numberOfDots: 5,
                    dotSpacing: 10,
                  ),
                ),
                JumpingText('CAR IMPORT AND SALES')*/
              ],
            ),
          ),
        )));
  }
}
