import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/helper/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();

  @override
  void initState() {
    super.initState();
    categories = getCategory();
  }

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
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 70.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategotyTile(categories[index].categoryName,
                      categories[index].categoryUrl);
                },
                itemCount: categories.length,
              ),
            ),
          ],
        ),
      ),
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
      margin: EdgeInsets.only(right: 14),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.network(
              categoryImage,
              width: 120.0,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.black26),
            width: 120.0,
            height: 60,
            child: Center(
              child: Text(
                categoryName,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
