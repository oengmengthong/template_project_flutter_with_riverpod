import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template_project_flutter_with_riverpod/src/features/profile/view/profile_screen.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}
