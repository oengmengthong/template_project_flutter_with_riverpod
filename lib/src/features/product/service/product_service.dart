import '../../../data/entities/product.dart';
import '../../../data/repositories/product_repository.dart';

class ProductService {
  final ProductRepository _repository;

  ProductService(this._repository);

  Future<List<Product>> getProducts() async {
    return _repository.getProducts();
  }
}
