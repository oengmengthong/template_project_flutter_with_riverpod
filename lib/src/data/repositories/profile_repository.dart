import 'package:injectable/injectable.dart';

import '../datasources/remote/profile_remote_data_source.dart';
import '../entities/profile.dart';

@injectable
class ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;

  ProfileRepository(this._remoteDataSource);

  Future<Profile> getProfile() async {
    // Call the remote data source to fetch the profile
    return _remoteDataSource.getProfile();
  }
}
