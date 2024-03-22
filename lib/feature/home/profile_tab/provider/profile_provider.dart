import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';

class ProfileProvider {
  const ProfileProvider({required this.apiRequest});

  final APIRequest apiRequest;
  final int pageSize = 10;

  Future<Response> getRecipeOfUser({required int page}) async =>
      await apiRequest.post(
        endpoint: Endpoints.getRecipeOfUser,
        data: {
          'userId': SharedPref.getUserInfo().id,
          'page': page,
          'pageSize': pageSize,
        },
      );


}
