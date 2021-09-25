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
                  _buildBannerView(),
                  SizedBox(height: 10),
                  for (var i in [1, 2, 3, 4]) _buildCategoryView(i)
                ],
              ),
            )));
  }

  Widget _buildBannerView() {
    return Container(
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
    );
  }

  Widget _buildCategoryView(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () => print('Tapped cate $index'),
        // borderRadius: BorderRadius.circular(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20),
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8))),
                  child: Text('Category $index', style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),),
                )),
            Expanded(
                child: Ink(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      image: DecorationImage(
                          image: AssetImage('assets/image1.jpg'),
                          fit: BoxFit.cover)),
                )),
          ],
        ),
        // height: 100,
        // color: Colors.white, child: Text('a'), onPressed: () {
        // print('Tapped cate');
      ),
    );
  }
}
