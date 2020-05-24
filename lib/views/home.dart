import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Megz"),
            Text(
              "News",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Container(),
    );
  }
}

class CategotyTile extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  CategotyTile(this.categoryName, this.categoryImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(
            categoryImage,
            width: 120.0,
            height: 60,
          ),
        ],
      ),
    );
  }
}
