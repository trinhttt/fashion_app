import 'package:flutter/material.dart';
import 'package:fashion_app/widgets/product_item.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List<Map> productList = [];

  @override
  void initState() {
    super.initState();
    this.productList = List.generate(
        10,
        (index) => {
              'star': index % 5 + 1,
              'brand': 'brand $index',
              'name': 'product $index',
              'price': index + 1
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Catalog'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            _buildTagList(),
            _buildOptionView(),
            Expanded(child: _buildProductList())
          ],
        ));
  }

  Widget _buildOptionView() {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(Icons.category),
          SizedBox(
            width: 10,
          ),
          Text('Filters'),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text('Price: lowest to high')],
            ),
          ),
          Icon(Icons.category),
        ],
      ),
    );
  }

  Widget _buildTagList() {
    return Container(
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Center(
                  child: Container(
                      height: 30,
                      width: 100,
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'T-shirts',
                          style: TextStyle(color: Colors.black),
                        ),
                      )));
            }));
  }

  Widget _buildProductList() {
    return Container(
      margin: EdgeInsets.all(14),
      child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 7,
              mainAxisExtent: 280),
          itemBuilder: (BuildContext context, int index) {
            return ProductItem(productList[index]);
          }),
    );
  }
}
