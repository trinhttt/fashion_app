import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  bool _isGreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isGreen ? Colors.green : Colors.white,
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    this._isGreen = !this._isGreen;
                  });
                },
                onLongPress: () {
                  print('Long Press');
                },
                child: Text('Change color'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    primary: Colors.red,
                    // Color for text
                    textStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                    elevation: 20,
                    shadowColor: Colors.red),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    this._isGreen = !this._isGreen;
                  });
                },
                onLongPress: () {
                  print('Long Press');
                },
                child: Text('Change color'),
                style: TextButton.styleFrom(
                    side: BorderSide(
                        color: Colors.blue,
                        width: 5
                    ),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                ),
              ),
            ],
          )),
    );
  }
}
