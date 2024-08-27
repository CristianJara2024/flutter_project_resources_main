import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/services/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final _productService = Get.find<ProductService>();

  final RxList<ProductModel> _products = <ProductModel>[].obs;
  List<ProductModel> get products => _products;

  @override
  Future<void> onReady() async {
    await getProducts();
    await findAvailableProducts();
    super.onReady();
  }

  Future<void> getProducts() async {
    await _productService.syncProducts();
  }

  Future<void> findAvailableProducts() async {
    _products.value = await _productService.findAvailableProducts();
  }

  Future<void> deleteProduct(ProductModel product) async {
    await _productService.deleteProduct(product);
    await findAvailableProducts();
  }
}
