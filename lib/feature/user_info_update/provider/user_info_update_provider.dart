import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class UserInfoUpdateProvider {
  const UserInfoUpdateProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> updateUserInfo({
    required String userName,
    required String userEmail,
    required String description,
  }) async =>
      await apiRequest.post(
        endpoint: Endpoints.updateUserInfo,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'userName': userName,
          'userEmail': userEmail,
          'description': description,
        },
      );
}
