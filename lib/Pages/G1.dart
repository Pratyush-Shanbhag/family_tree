import 'package:flutter/material.dart';

class G1 extends StatelessWidget {
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
            Navigator.pushNamed(context, '/3');
        },
        child: Scaffold(
          backgroundColor: Color(0xFFCADCED),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 275),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.deepPurple,
                              child: CircleAvatar(
                                radius: 75,
                                backgroundImage: AssetImage('assets/images/man.png'),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'TP',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.deepPurple,
                              child: CircleAvatar(
                                radius: 75,
                                backgroundImage: AssetImage('assets/images/woman.png'),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'AU',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 100,
                  ),
                  margin: EdgeInsets.only(top: 100),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}