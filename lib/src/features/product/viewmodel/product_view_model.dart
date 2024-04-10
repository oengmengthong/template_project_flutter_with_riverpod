import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/datasources/remote/product_remote_data_source.dart';
import '../../../data/entities/product.dart';
import '../../../data/repositories/product_repository.dart';
import '../service/product_service.dart';

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final remoteDataSource = ProductRemoteDataSource();
  return ProductRepository(remoteDataSource);
});

final productServiceProvider = Provider<ProductService>((ref) {
  final repository = ref.watch(productRepositoryProvider);
  return ProductService(repository);
});

final productViewModelProvider =
    ChangeNotifierProvider<ProductViewModel>((ref) {
  final productService = ref.watch(productServiceProvider);
  return ProductViewModel(productService);
});

class ProductViewModel extends ChangeNotifier {
  final ProductService _productService;

  ProductViewModel(this._productService);

  List<Product>? _products;

  List<Product>? get products => _products;

  Future<void> fetchProducts() async {
    try {
      _products = await _productService.getProducts();
      notifyListeners();
    } catch (e) {
      // Handle error
      print('Error fetching products: $e');
    }
  }
}
