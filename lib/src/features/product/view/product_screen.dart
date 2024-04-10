import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/product_view_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Consumer(
        builder: (context, watch, _) {
          final productViewModel = watch.read(productViewModelProvider);
          return productViewModel.products != null
              ? ListView.builder(
                  itemCount: productViewModel.products!.length,
                  itemBuilder: (context, index) {
                    final product = productViewModel.products![index];
                    return ListTile(
                      title: Text(product.name),
                      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                      // Add more details if needed
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
