import 'package:flutter/material.dart';
import './home.dart';
import './catalog.dart';
import './category.dart';

class TabContainer extends StatefulWidget {
  TabContainer({Key? key}) : super(key: key);

  @override
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int tabIndex = 0;
  List<Widget> listScreens = [];

  @override
  void initState() {
    super.initState();
    listScreens = [
      Home(),
      Category(),
      Catalog(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(index: tabIndex, children: listScreens),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabIndex,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Catalog',
              ),
            ]),
    );
  }
}
