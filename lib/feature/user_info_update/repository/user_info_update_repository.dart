import 'package:foodie/feature/user_info_update/provider/user_info_update_provider.dart';
import 'package:fpdart/fpdart.dart';

class UserInfoUpdateRepository {
  const UserInfoUpdateRepository({
    required this.updateProvider,
  });

  final UserInfoUpdateProvider updateProvider;

  TaskEither<String, bool> updateUserInfo({
    required String userName,
    required String userEmail,
    required String description,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await updateProvider.updateUserInfo(
        userName: userName,
        userEmail: userEmail,
        description: description,
      );
      if (response.data['mess'] == 'success') {
        return true;
      } else {
        throw Exception(response.data['mess'] ?? 'updateUserInfo failed');
      }
    }, (error, stackTrace) => error.toString());
  }
}
