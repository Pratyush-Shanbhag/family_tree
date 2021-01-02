import 'package:flutter/material.dart';

class P extends StatelessWidget {
  @override

  String nextScreen = '';
  bool isLeftSide = false;

  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      Navigator.pushNamed(context, '/home');
    }

    return new WillPopScope(
      onWillPop: _onBackPressed,
      child: GestureDetector(
        onPanStart: (DragStartDetails details) {
          isLeftSide = details.globalPosition.dx < MediaQuery.of(context).size.width/2;
        },
        onPanUpdate: (DragUpdateDetails details) {
          if(details.delta.dy > 0) {
            if(isLeftSide)
              Navigator.pushNamed(context, '/4');
            else
              Navigator.pushNamed(context, '/5');
          }
          else {
            if(isLeftSide)
              Navigator.pushNamed(context, '/1');
            else
              Navigator.pushNamed(context, '/2');
          }
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
                  margin: EdgeInsets.only(top: 50, bottom: 125),
                ),
                Container(
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
                              'A',
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
                              'M',
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