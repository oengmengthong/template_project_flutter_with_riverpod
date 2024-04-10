import '../../entities/product.dart';

class ProductRemoteDataSource {
  Future<List<Product>> getProducts() async {
    // Simulate fetching products from a remote API
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return [
      Product(id: 1, name: 'Product 1', price: 10.0),
      Product(id: 2, name: 'Product 2', price: 20.0),
      // Add more mock products here as needed
    ];
  }
}
