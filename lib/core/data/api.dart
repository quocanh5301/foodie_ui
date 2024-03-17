import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/data/share_pref.dart';

var apiRequest = Dio(BaseOptions(
  baseUrl: 'http://192.168.174.1:3000/',
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

void configInterceptor(Dio apiRequest) {
  if (!apiRequest.interceptors
      .any((interceptor) => interceptor is InterceptorsWrapper)) {
    apiRequest.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint('ON REQUEST $options');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          debugPrint('ON RESPONSE $response');
          if (response.data['code'] == 401 || response.statusCode == 401) {
            apiRequest.post(Endpoints.refreshToken, data: {
              'refreshToken': SharedPref.getRefreshToken(),
              'userEmail': SharedPref.getUserInfo().userEmail,
            }).then(
              (response) async {
                if (response.data['mess'] == 'success') {
                  await SharedPref.setAccessToken(
                      response.data['data']['accessToken']);
                  await SharedPref.setRefreshToken(
                      response.data['data']['refreshToken']);
                  apiRequest = Dio(BaseOptions(
                    baseUrl: 'http://192.168.174.1:3000/',
                    connectTimeout: const Duration(minutes: 1),
                    receiveTimeout: const Duration(minutes: 1),
                    headers: {
                      'Authorization': 'Bearer ${SharedPref.getAccessToken()}',
                    },
                  ));
                  configInterceptor(apiRequest);
                } else {
                  final context = rootNavigatorKey.currentContext;
                  if (context != null) {
                    const LoginRoute().go(context);
                  }
                }
              },
            );
          }
          return handler.next(response);
        },
        onError: (error, handler) {
          debugPrint('ON ERROR ${error.response}');
          if (error.response?.statusCode == 401 ||
              error.response?.data['code'] == 401) {
            debugPrint('QA on 401');
            apiRequest.post(Endpoints.refreshToken, data: {
              'refreshToken': SharedPref.getRefreshToken(),
              'userEmail': SharedPref.getUserInfo().userEmail,
            }).then(
              (response) async {
                if (response.data['mess'] == 'success') {
                  await SharedPref.setAccessToken(
                      response.data['data']['accessToken']);
                  await SharedPref.setRefreshToken(
                      response.data['data']['refreshToken']);
                  apiRequest = Dio(BaseOptions(
                    baseUrl: 'http://192.168.174.1:3000/',
                    connectTimeout: const Duration(minutes: 1),
                    receiveTimeout: const Duration(minutes: 1),
                    headers: {
                      'Authorization': 'Bearer ${SharedPref.getAccessToken()}',
                    },
                  ));
                  configInterceptor(apiRequest);
                } else {
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

class APIRequest {
  APIRequest() {
    configInterceptor(apiRequest);
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
