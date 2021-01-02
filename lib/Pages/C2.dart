import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class C2 extends StatelessWidget {
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
            Navigator.pushNamed(context, '/3');
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
                  margin: EdgeInsets.only(top: 50, bottom: 100),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 120,
                        backgroundColor: Colors.deepPurple,
                        child: CircleAvatar(
                          radius: 110,
                          backgroundImage: AssetImage('assets/images/man.png'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pish',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}