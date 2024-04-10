import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'product_screen.dart';

@RoutePage()
class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductScreen();
  }
}
