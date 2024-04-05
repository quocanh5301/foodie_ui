import 'package:foodie/feature/user_password_update/provider/user_password_update_provider.dart';
import 'package:fpdart/fpdart.dart';

class UserPasswordUpdateRepository {
  const UserPasswordUpdateRepository({
    required this.userPasswordUpdateProvider,
  });

  final UserPasswordUpdateProvider userPasswordUpdateProvider;

  TaskEither<String, String> changePassword({
    required String oldPassword,
    required String newPassword,
  }) {
    return TaskEither.tryCatch(
      () async {
        final response = await userPasswordUpdateProvider.changePassword(
          oldPassword: oldPassword,
          newPassword: newPassword,
        );
        if (response.data['mess'] == 'success') {
          return response.data['mess'];
        } else {
          throw Exception(response.data['mess'] ?? 'changePassword failed');
        }
      },
      (error, stackTrace) => error.toString(),
    );
  }
}
