import '../../../data/datasources/remote/profile_remote_data_source.dart';
import '../../../data/entities/profile.dart';
import '../../../data/repositories/profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  final remoteDataSource = ProfileRemoteDataSource();
  return ProfileRepository(remoteDataSource);
});

final profileServiceProvider = Provider<ProfileService>((ref) {
  final repository = ref.watch(profileRepositoryProvider);
  return ProfileService(repository);
});

class ProfileService {
  final ProfileRepository _repository;

  ProfileService(this._repository);

  Future<Profile> getProfile() async {
    return _repository.getProfile();
  }
}
