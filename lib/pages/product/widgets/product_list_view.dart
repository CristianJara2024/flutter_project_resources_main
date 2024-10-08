import 'package:flutter/material.dart';
import 'package:flutter_project_resources/pages/product/product_controller.dart';
import 'package:get/get.dart';

class ListViewProducts extends GetView<ProductController> {
  const ListViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: controller.products.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              controller.products[index].name ?? '',
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(controller.products[index].description ?? ''),
            trailing: Wrap(
              spacing: 10,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    controller.deleteProduct(controller.products[index]);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
