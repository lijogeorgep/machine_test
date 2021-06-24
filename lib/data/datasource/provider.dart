import 'package:machinetest/config/serveraddress.dart';
import 'package:machinetest/data/model/add.dart';
import 'package:machinetest/data/model/category.dart';
import 'package:machinetest/data/model/products.dart';
import 'package:machinetest/domain/entities/RestApi.dart';
import 'package:machinetest/domain/entities/app_exceptions.dart';

class Provider {
  Future<Products> getProducts({Map<dynamic, dynamic> params}) async {
    print("params+$params");
    try {
      var res = await RestAPI().get(ServerAddress.productList);

      return productsFromMap(res);
    } on RestException catch (e) {
      throw e.message;
    }
  }
  ///sub category
  Future<Add> postProducts({Map<dynamic, dynamic> params}) async {
    print("params+$params");
    try {
      var res =   await RestAPI().post("${ServerAddress.addProduct}", params: params);

      return addFromMap(res);
    } on RestException catch (e) {
      throw e.message;
    }
  }
  /// category
  Future<Category> postCategory({Map<dynamic, dynamic> params}) async {
    print("params+$params");
    try {
      var res =   await RestAPI().post("${ServerAddress.addCategory}", params: params);

      return categoryFromMap(res);
    } on RestException catch (e) {
      throw e.message;
    }
  }
}
