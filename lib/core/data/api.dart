import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/data/share_pref.dart';

final apiRequest = Dio(BaseOptions(
  baseUrl: 'http://192.168.1.226:3000/',
  connectTimeout: const Duration(minutes: 1),
  receiveTimeout: const Duration(minutes: 1),
  headers: {
    'Authorization': 'Bearer ${SharedPref.getAccessToken()}',
  },
));

class Endpoints {
  static String login = 'authenticate/logIn';
  static String register = 'register/registerUser';
  static String refreshToken = 'authenticate/refreshToken';
  static String getProfileImage = 'user/getProfileImage';
  static String setProfileImage = 'user/setProfileImage'; //?
  static String updateProfileImage = 'user/updateProfileImage'; //?
  static String changePassword = 'user/changeUserPassword';
  static String updateUserInfo = 'user/updateUserData';
  static String getRecipeDetail = 'recipe/getRecipeDetail';
  static String getUserBookmarkRecipe = 'recipe/getUserBookmarkRecipe'; //paging
  static String getNewRecipe = 'recipe/getNewRecipe';
  static String getTopRecipe = 'recipe/getTopRecipe';
  static String getRecipeOfUser = 'recipe/getRecipeOfUser';
  static String createNewRecipe = 'recipe/createNewRecipe';
  static String bookmarkRecipe = 'recipe/bookmarkRecipe';
  static String followUser = 'user/followUser';
  static String setFirebaseToken = 'user/setFirebaseToken';
}

class Token {
  static String accessTokenSecret = 'mygfisinanothernationimaginationhaha';
  static String refreshTokenSecret = 'mylifeisafuckingjokeplshelpwtf';
}

class APIRequest {
  APIRequest() {
    if (!apiRequest.interceptors
        .any((interceptor) => interceptor is InterceptorsWrapper)) {
      apiRequest.interceptors.add(
        InterceptorsWrapper(
          onError: (error, handler) {
            if (error.response?.statusCode == 401) {
              debugPrint('QA on 401');
              apiRequest.get(Endpoints.refreshToken, data: {
                'refreshToken': SharedPref.getRefreshToken(),
                // 'userId': SharedPref.get(),
              }).then(
                (response) {
                  debugPrint('api interceptor $response');
                  if (response.data['mess'] == 'success') {
                    debugPrint('api interceptor success');
                    SharedPref.setAccessToken(
                        response.data['data']['accessToken']);
                    SharedPref.setRefreshToken(
                        response.data['data']['refreshToken']);
                  } else {
                    // ignore: avoid_print
                    print('Refresh token failed');
                    // ignore: invalid_use_of_protected_member
                    final context = rootNavigatorKey.currentContext;
                    if (context != null) {
                      const LoginRoute().go(context);
                    }
                  }
                },
              );
            }
            return handler.next(error);
          },
        ),
      );
    }
  }

  Future<Response> get({
    required String endpoint,
    Object? data,
  }) =>
      apiRequest.get(
        endpoint,
        data: data,
      );

  Future<Response> post({
    required String endpoint,
    Object? data,
  }) {
    debugPrint('apiRequest.post $endpoint $data');
    return apiRequest.post(
      endpoint,
      data: data,
    );
  }
}
