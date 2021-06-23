import 'package:machinetest/data/datasource/provider.dart';
import 'package:machinetest/data/model/products.dart';

class Repository {
  Provider productScreenProviders = Provider();

  Future<Products> getProducts({Map<dynamic, dynamic> params}) =>
      productScreenProviders.getProducts();
}
