import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        Padding(
            padding: EdgeInsets.only(left: 10, top: 20, right: 5),
            child: Row(
              children: [
                Text('Sale', style: Theme.of(context).textTheme.headline6),
                Spacer(),
                TextButton(
                    onPressed: () {
                      print('View all tapped');
                    },
                    child: Text('View all'))
              ],
            )),
        Container(
            width: double.infinity,
            height: 275,
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return _productItem(context);
              },
            )),
        Padding(
            padding: EdgeInsets.only(left: 10, top: 20, right: 5),
            child: Row(
              children: [
                Text('New', style: Theme.of(context).textTheme.headline6),
                Spacer(),
                TextButton(
                    onPressed: () {
                      print('View all tapped');
                    },
                    child: Text('View all'))
              ],
            )),
        Container(
            width: double.infinity,
            height: 275,
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return _productItem(context);
              },
            )),
      ]),
    );
  }

  Widget _productItem(BuildContext context) {
    return InkWell(
        onTap: () {
          print('Product tapped');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15),
              width: 148,
              height: 184,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/image1.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        for (var _ in [1, 1, 1, 1, 1]) Icon(Icons.star, color: Colors.yellow, size: 17),
                        Text("(10)", style: TextStyle(fontSize: 12, color: Colors.white70)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text("Brand 1", style: TextStyle(fontSize: 10, color: Colors.white70)),
                    SizedBox(height: 4),
                    Text("Product 1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                    SizedBox(height: 4),
                    Text(
                      "10\$",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ))
          ],
        ));
  }
}
