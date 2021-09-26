import 'package:flutter/material.dart';
import 'package:fashion_app/models/product_struct.dart';

class ProductItem extends StatelessWidget {
  final ProductStruct product;
  ProductItem(this.product, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print('Product tapped');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(7),
              // width: MediaQuery.of(context).size.width / 2 - 30,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/image1.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
                margin: EdgeInsets.only(left: 7, bottom: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        for (var i = 0; i < product.star; i++)
                          Icon(Icons.star, color: Colors.yellow, size: 17),
                        Text("(10)",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white70)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(product.brand,
                        style: TextStyle(fontSize: 10, color: Colors.white70)),
                    SizedBox(height: 4),
                    Text(product.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    SizedBox(height: 4),
                    Text(
                      "${product.price}\$",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ))
          ],
        ));
  }
}
