import 'package:flutter/material.dart';
import 'first_screen.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second';
  @override
  Widget build(BuildContext context) {
    final recipeId = (ModalRoute.of(context)?.settings.arguments) ?? "";
    print('trinh111 $recipeId');
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: 20, width: double.infinity,),
          Text('The second screen'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(FirstScreen.routeName);
              }, 
              child: Text('Next screen')
          )
        ],
      ),
    );
  }
}