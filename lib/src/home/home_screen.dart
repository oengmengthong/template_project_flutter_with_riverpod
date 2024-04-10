import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(ProductRoute());
              },
              child: Text('Go to Product'),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(ProfileRoute());
              },
              child: Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
