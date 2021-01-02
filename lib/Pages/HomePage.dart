import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('Family Tree'),
            backgroundColor: Colors.teal,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                  height: 400.0,
                  width: 400.0,
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset('assets/images/tree.png',
                    scale: 0.3,)
              ),
            ),
            Center(
              child: ButtonTheme(
                minWidth: 200,
                height: 50,
                child: RaisedButton.icon(
                  color: Colors.blue,
                  label: Text('Start', style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/1');
                  },
                  icon: Icon(
                    Icons.forward,
                    size: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*ButtonTheme(
                    minWidth: 135,
                    child: RaisedButton.icon(
                      col
                      icon: Icon(
                        Icons.forward
                      ),
                      label: Text('Start'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/1');
                      },
                    ),
                  ),

                  */
