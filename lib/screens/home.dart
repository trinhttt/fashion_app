import 'package:flutter/material.dart';
import 'package:fashion_app/widgets/product_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> productList = List.generate(
      5,
          (index) =>
      {
        'star': index % 5 + 1,
        'brand': 'brand $index',
        'name': 'product $index',
        'price': index + 1
      });
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          height: 170,
          decoration: BoxDecoration(color: Colors.white),
        ),
        _buildTitleView('Sale'),
        _buildProductListView(),
        _buildTitleView('New'),
        _buildProductListView()
      ]),
    );
  }

  Widget _buildTitleView(String title) {
    return Padding(
        padding: EdgeInsets.only(left: 15, top: 5, right: 5),
        child: Row(
          children: [
            Text(title, style: Theme
                .of(context)
                .textTheme
                .headline6),
            Spacer(),
            TextButton(
                onPressed: () {
                  print('View all tapped');
                },
                child: Text('View all'))
          ],
        ));
  }

  Widget _buildProductListView() {
    return Container(
        width: double.infinity,
        height: 285,
        margin: EdgeInsets.only(top: 10, right: 10, left: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemExtent: MediaQuery
              .of(context)
              .size
              .width / 2 - 30,
          itemBuilder: (context, index) {
            return ProductItem(productList[index]);
          },
        ));
  }
}
