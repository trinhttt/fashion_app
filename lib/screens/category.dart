import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Categories'),
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: Colors.red,
                tabs: [Tab(text: 'Women'), Tab(text: 'Men'), Tab(text: 'Kids')],
              ),
            ),
            body: Container(
              margin: EdgeInsets.all(10),
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                    ),
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('SUMMER SALES',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500)),
                        Text('Up to 50% off')
                      ],
                    ),
                  ),
                  for (var _ in [1, 1, 1, 1]) _categoryView()
                ],
              ),
            )));
  }

  Widget _categoryView() {
    return Text('Up to 50% off1');
  }
}
