import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodel/profile_view_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Consumer(
        builder: (context, watch, _) {
          final profileViewModel = watch.read(profileViewModelProvider);
          return Center(
            child: profileViewModel.profile != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Name: ${profileViewModel.profile!.name}'),
                      Text('Email: ${profileViewModel.profile!.email}'),
                    ],
                  )
                : CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
