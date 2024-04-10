import '../../entities/profile.dart';

class ProfileRemoteDataSource {
  Future<Profile> getProfile() async {
    // Simulate fetching profile data from a remote API
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return Profile(name: 'John Doe', email: 'john@example.com');
  }
}
