import 'package:amazon_ui/producModel/productModel.dart';

class CategoryModel {

  List<ProductModel> products;
  String categoryName;

  CategoryModel({required this.products, required this.categoryName});
}