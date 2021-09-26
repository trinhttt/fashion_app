import 'package:flutter/material.dart';
import 'package:fashion_app/widgets/product_item.dart';
import 'package:fashion_app/widgets/home_swiper.dart';
import 'package:fashion_app/models/swiper_struct.dart';
import 'package:fashion_app/models/product_struct.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<ProductStruct> productList;
  late List<SwiperStruct> swiperList;

  @override
  void initState() {
    super.initState();
    productList = List.generate(
        5,
        (index) => ProductStruct(
            index % 5 + 1, 'brand $index', 'product $index', index + 1));

    swiperList = List.generate(
        5, (index) => SwiperStruct('Tile $index', 'assets/image1.jpg'));
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
          child: HomeSwiper(swiperList),
        ),
        _buildTitleView('Sale', 'Summer sales'),
        _buildProductListView(),
        _buildTitleView('New', 'You’ve never seen it before!'),
        _buildProductListView()
      ]),
    );
  }

  Widget _buildTitleView(String title, String subTitle) {
    return Padding(
        padding: EdgeInsets.only(left: 15, top: 5, right: 5),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6),
                Text(subTitle, style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300))
              ],
            ),
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
          itemExtent: MediaQuery.of(context).size.width / 2 - 30,
          itemBuilder: (context, index) {
            return ProductItem(productList[index]);
          },
        ));
  }
}
