import 'package:injectable/injectable.dart';

import '../datasources/remote/product_remote_data_source.dart';
import '../entities/product.dart';

@injectable
class ProductRepository {
  final ProductRemoteDataSource _remoteDataSource;

  ProductRepository(this._remoteDataSource);

  Future<List<Product>> getProducts() async {
    // Call the remote data source to fetch products
    return _remoteDataSource.getProducts();
  }
}
