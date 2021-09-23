import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Catalog Content',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
