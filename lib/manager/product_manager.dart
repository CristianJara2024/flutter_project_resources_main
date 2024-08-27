import 'package:flutter_project_resources/api/product_api.dart';
import 'package:flutter_project_resources/manager/common/base_manager.dart';
import 'package:flutter_project_resources/models/product_model.dart';

class ProductManager extends BaseManager<ProductApi> {
  ProductManager({super.mockedApi});

  Future<List<ProductModel>> getProducts() async {
    final result = api.getProducts();
    return result;
  }
}
