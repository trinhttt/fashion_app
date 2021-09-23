import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: 20, width: double.infinity,),
          Text('The Second screen'),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondScreen.routeName, arguments: "trinh");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SecondScreen()),
                // );
              },
              child: Text('Next screen')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back to previous screen')
          )
        ],
      ),
    );
  }
}