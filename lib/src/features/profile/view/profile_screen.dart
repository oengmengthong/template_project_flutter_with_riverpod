import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodel/profile_view_model.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: FutureBuilder(
        future: ref.read(profileViewModelProvider).fetchProfile(),
        builder: (context, __) {
          final profileViewModel = ref.watch(profileViewModelProvider);

          return Center(
              child: profileViewModel.profile != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Name: ${profileViewModel.profile!.name}'),
                        Text('Email: ${profileViewModel.profile!.email}'),
                      ],
                    )
                  : const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ));
        },
      ),
    );
  }
}
