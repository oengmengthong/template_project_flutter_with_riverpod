import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/entities/profile.dart';
import '../service/profile_service.dart';

final profileViewModelProvider =
    ChangeNotifierProvider<ProfileViewModel>((ref) {
  final profileService = ref.watch(profileServiceProvider);
  return ProfileViewModel(profileService);
});

class ProfileViewModel extends ChangeNotifier {
  final ProfileService _profileService;

  ProfileViewModel(this._profileService);

  Profile? _profile;

  Profile? get profile => _profile;

  Future<void> fetchProfile() async {
    try {
      _profile = await _profileService.getProfile();
      notifyListeners();
    } catch (e) {
      // Handle error
      print('Error fetching profile: $e');
    }
  }
}
