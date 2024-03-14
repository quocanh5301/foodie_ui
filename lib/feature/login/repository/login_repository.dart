import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter/material.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/feature/login/provider/login_provider.dart';
import 'package:foodie/model/user/user.dart';
import 'package:fpdart/fpdart.dart';
// import 'package:tango/models/user/user.dart' as tango_user;

class LoginRepository {
  const LoginRepository({
    required this.loginProvider,
    // required this.firebaseMessaging,
  });

  // final FirebaseMessaging firebaseMessaging;
  final LoginProvider loginProvider;

  TaskEither<String, bool> login(
      {required String email, required String password}) {
    return TaskEither.tryCatch(() async {
      debugPrint('login repo $email $password');
      final response =
          await loginProvider.login(email: email, password: password);
      if (response.data['mess'] == 'success') {
        debugPrint('login success');
        String accessToken = response.data['data']['accessToken'];
        String refreshToken = response.data['data']['refreshToken'];
        try {
          // Verify a token (SecretKey for HMAC & PublicKey for all the others)
          final jwt =
              JWT.verify(accessToken, SecretKey(Token.accessTokenSecret));
          debugPrint('Payload: ${jwt.payload}');
          SharedPref.setAccessToken(accessToken);
          SharedPref.setRefreshToken(refreshToken);

          SharedPref.setUserInfo(
              User.fromJson(JWT.decode(accessToken).payload));
          // registerFirebaseMessaging();
        } on JWTExpiredException {
          return false;
        } on JWTException catch (ex) {
          debugPrint(ex.message); // ex: invalid signature
          return false;
        }
        return true;
      } else {
        throw Exception(response.data['mess'] ?? 'Login failed');
      }
    }, (error, stackTrace) => error.toString());
  }

  void registerFirebaseMessaging() {
    // firebaseMessaging.getToken().then((token) {
    //   if (token != null) {
    //     loginProvider.updateFirebaseMessagingToken(firebaseToken: token);
    //     firebaseMessaging.subscribeToTopic('all');
    //   }
    // });
  }
}
