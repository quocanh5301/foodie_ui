import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';

class LoginProvider {
  const LoginProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> login(
          {required String email, required String password}) async =>
      await apiRequest.post(
        endpoint: Endpoints.login,
        data: {
          'email': email,
          'password': password,
        },
      );

  // Future<Response> updateFirebaseMessagingToken(
  //         {required String firebaseToken}) async =>
  //     await apiRequest.post(
  //       endpoint: Endpoints.updateFirebaseMessagingToken,
  //       data: {
  //         'api_token': SharedPref.getApiToken(),
  //         'device_token': firebaseToken
  //       },
  //     );
}
