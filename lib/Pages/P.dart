import 'package:flutter/material.dart';

class P extends StatelessWidget {
  @override

  String nextScreen = '';

  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      Navigator.pushNamed(context, '/home');
    }

    return new WillPopScope(
      onWillPop: _onBackPressed,
      child: GestureDetector(
        onPanStart: (DragStartDetails details) {
          if(details.globalPosition.dx < MediaQuery.of(context).size.width/2)
            nextScreen = '/3';
          else
            nextScreen = '/4';
        },
        onPanUpdate: (DragUpdateDetails details) {
          if(details.delta.dy > 0)
            Navigator.pushNamed(context, nextScreen);
          else
            Navigator.pushNamed(context, '/1');
        },
        child: Scaffold(
          backgroundColor: Color(0xFFCADCED),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.circle,
                    size: 100,
                  ),
                  margin: EdgeInsets.only(top: 50),
                ),
                Container(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 100,
                  ),
                  margin: EdgeInsets.only(bottom: 50),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}