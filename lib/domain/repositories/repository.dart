import 'package:machinetest/data/datasource/provider.dart';
import 'package:machinetest/data/model/add.dart';
import 'package:machinetest/data/model/category.dart';
import 'package:machinetest/data/model/products.dart';

class Repository {
  Provider productScreenProviders = Provider();

  Future<Products> getProducts({Map<dynamic, dynamic> params}) =>
      productScreenProviders.getProducts();
  Future<Add>postProducts({Map<dynamic, dynamic> params}) =>
      productScreenProviders.postProducts(params: params);
  Future<Category>postCategory({Map<dynamic, dynamic> params}) =>
      productScreenProviders.postCategory(params: params);
}
