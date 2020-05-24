import 'package:flutter/foundation.dart';
import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategory() {
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();
  categoryModel.categoryName = "Bussines";
  categoryModel.categoryUrl =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";

  category.add(categoryModel);
}
