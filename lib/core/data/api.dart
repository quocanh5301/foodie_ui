import 'package:dio/dio.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/data/share_pref.dart';

final apiRequest = Dio(BaseOptions(
  baseUrl: 'http://192.168.106.1:3000/',
  connectTimeout: const Duration(minutes: 1),
  receiveTimeout: const Duration(minutes: 1),
  headers: {
    'Authorization': 'Bearer ${SharedPref.getAccessToken()}',
  },
));

class Endpoints {
  static String login = 'authenticate/logIn';
  static String logout = 'authenticate/logOut';
  static String register = 'register/registerUser';
  static String refreshToken = 'authenticate/refreshToken';
  static String getProfileImage = 'user/getProfileImage';
  static String setProfileImage = 'user/setProfileImage'; //?
  static String updateProfileImage = 'user/updateProfileImage'; //?
  static String changePassword = 'user/changeUserPassword';
  static String updateUserInfo = 'user/updateUserData';
  static String getRecipeDetail = 'recipe/getRecipeDetail';
  static String getUserBookmarkRecipe = 'recipe/getUserBookmarkRecipe';
  static String getNewRecipe = 'recipe/getNewRecipe';
  static String getTopRecipe = 'recipe/getTopRecipe';
  static String getRecipeOfUser = 'recipe/getRecipeOfUser';
  static String createNewRecipe = 'recipe/createNewRecipe';
  static String bookmarkRecipe = 'recipe/bookmarkRecipe';
  static String followUser = 'user/followUser';
  static String setFirebaseToken = 'user/setFirebaseToken';
  static String getFollowedUserNewRecipe = 'recipe/getUserFollowingNewRecipe';
  static String getReviewOfUserRecipe = 'user/getReviewsOnUserRecipe';
  static String getReviewsOfRecipe = 'recipe/getReviewOnRecipe';
  static String rateRecipe = 'recipe/rateRecipe';
  static String getPersonalRatingForRecipe =
      'recipe/getPersonalRatingForRecipe';
  static String getUserProfile = 'user/getUserProfile';
  static String checkIsFollowOrNot = 'user/checkIsFollowOrNot';
  static String getRecipeNumFollowerFollowing =
      'user/getRecipeNumFollowerFollowing';
  static String searchRecipeAndUser = 'recipe/searchRecipeAndUser';
  static String getNotificationOfUser = 'notification/getNotificationOfUser';
  static String seenNotification = 'notification/seenNotification';//!
  static String deleteNotification = 'notification/deleteNotification';
  static String deleteRecipe = 'recipe/removeRecipeOfUser';//!
  static String editRecipe = 'recipe/editRecipe';//!
  static String getRecipeInfo = 'recipe/getRecipeNameInstructionDescription';//!
}

class Token {
  //! run flutter run --dart-define=accessTokenSecret=mygfisinanothernationimaginationhaha --dart-define=refreshTokenSecret=mylifeisafuckingjokeplshelpwtf
  static String accessTokenSecret = 'mygfisinanothernationimaginationhaha';
  static String refreshTokenSecret = 'mylifeisafuckingjokeplshelpwtf';
  //! usage: 
  //! const accessTokenSecret = String.fromEnvironment('accessTokenSecret', defaultValue: 'i don't know :P');
  //! const refreshTokenSecret = String.fromEnvironment('refreshTokenSecret', defaultValue: 'get out please');
}

void configInterceptor(Dio apiRequest) {
  final interceptor = InterceptorsWrapper(
    onRequest: (options, handler) {
      // debugPrint('ON REQUEST PATH ${options.path}');
      // debugPrint('ON REQUEST DATA ${options.data.toString()}');
      // debugPrint('ON REQUEST EXTRA ${options.extra}');
      // debugPrint('ON REQUEST METHOD ${options.method}');
      // debugPrint('ON REQUEST HEADER ${options.headers}');
      return handler.next(options);
    },
    onResponse: (response, handler) {
      // debugPrint('ON RESPONSE $response');
      return handler.next(response);
    },
    onError: (error, handler) {
      // debugPrint('ON ERROR $error');
      if (error.response?.statusCode == 401 ||
          error.response?.data['code'] == 401) {
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
              apiRequest.options.headers['Authorization'] =
                  'Bearer ${response.data['data']['accessToken']}';
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
  );

  apiRequest.interceptors.clear();
  if (!apiRequest.interceptors
      .any((interceptor) => interceptor is InterceptorsWrapper)) {
    // debugPrint('INTERCEPTOR ADDED');
    apiRequest.interceptors.clear();
    apiRequest.interceptors.add(interceptor);
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
  }) =>
      apiRequest.post(
        endpoint,
        data: data,
      );
}
