import 'package:machinetest/config/serveraddress.dart';
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
}
