import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class C extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      Navigator.pushNamed(context, '/home');
    }

    return new WillPopScope(
      onWillPop: _onBackPressed,
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          if(details.delta.dy > 0)
            Navigator.pushNamed(context, '/2');
        },
        child: Scaffold(
          backgroundColor: Color(0xFFCADCED),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    size: 100,
                  ),
                  margin: EdgeInsets.only(top: 50),
                ),
    /*          Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/C1.png'),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 50),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/C2.png'),
                        ),
                      ),
                    ),
                  ],
                ),*/
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