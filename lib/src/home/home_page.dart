import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
