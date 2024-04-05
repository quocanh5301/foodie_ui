import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class UserPasswordUpdateProvider {
  const UserPasswordUpdateProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.changePassword,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'oldPassword': oldPassword,
          'newPassword': newPassword,
        },
      );
}
