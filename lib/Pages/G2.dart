import 'package:flutter/material.dart';

class G2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      Navigator.pushNamed(context, '/home');
    }

    return new WillPopScope(
      onWillPop: _onBackPressed,
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          if (details.delta.dy < 0)
            Navigator.pushNamed(context, '/2');
        },
        child: Scaffold(
          backgroundColor: Color(0xFFCADCED),
          body: Center(
            child: Column(
              children: <Widget>[
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