// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginRoute,
      $registerRoute,
      $homeRoute,
      $recipeDetailRoute,
      $userSettingRoute,
      $userInfoUpdateRoute,
      $userPasswordUpdateRoute,
      $userProfileRoute,
      $searchResultRoute,
    ];

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerRoute => GoRouteData.$route(
      path: '/register',
      factory: $RegisterRouteExtension._fromState,
    );

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  String get location => GoRouteData.$location(
        '/register',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $recipeDetailRoute => GoRouteData.$route(
      path: '/recipe_detail',
      factory: $RecipeDetailRouteExtension._fromState,
    );

extension $RecipeDetailRouteExtension on RecipeDetailRoute {
  static RecipeDetailRoute _fromState(GoRouterState state) => RecipeDetailRoute(
        recipeId: int.parse(state.uri.queryParameters['recipe-id']!),
      );

  String get location => GoRouteData.$location(
        '/recipe_detail',
        queryParams: {
          'recipe-id': recipeId.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userSettingRoute => GoRouteData.$route(
      path: '/setting',
      factory: $UserSettingRouteExtension._fromState,
    );

extension $UserSettingRouteExtension on UserSettingRoute {
  static UserSettingRoute _fromState(GoRouterState state) =>
      const UserSettingRoute();

  String get location => GoRouteData.$location(
        '/setting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userInfoUpdateRoute => GoRouteData.$route(
      path: '/update_info',
      factory: $UserInfoUpdateRouteExtension._fromState,
    );

extension $UserInfoUpdateRouteExtension on UserInfoUpdateRoute {
  static UserInfoUpdateRoute _fromState(GoRouterState state) =>
      const UserInfoUpdateRoute();

  String get location => GoRouteData.$location(
        '/update_info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userPasswordUpdateRoute => GoRouteData.$route(
      path: '/update_password',
      factory: $UserPasswordUpdateRouteExtension._fromState,
    );

extension $UserPasswordUpdateRouteExtension on UserPasswordUpdateRoute {
  static UserPasswordUpdateRoute _fromState(GoRouterState state) =>
      const UserPasswordUpdateRoute();

  String get location => GoRouteData.$location(
        '/update_password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userProfileRoute => GoRouteData.$route(
      path: '/user_info',
      factory: $UserProfileRouteExtension._fromState,
    );

extension $UserProfileRouteExtension on UserProfileRoute {
  static UserProfileRoute _fromState(GoRouterState state) => UserProfileRoute(
        userId: int.parse(state.uri.queryParameters['user-id']!),
      );

  String get location => GoRouteData.$location(
        '/user_info',
        queryParams: {
          'user-id': userId.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $searchResultRoute => GoRouteData.$route(
      path: '/search_result',
      factory: $SearchResultRouteExtension._fromState,
    );

extension $SearchResultRouteExtension on SearchResultRoute {
  static SearchResultRoute _fromState(GoRouterState state) => SearchResultRoute(
        keyword: state.uri.queryParameters['keyword']!,
      );

  String get location => GoRouteData.$location(
        '/search_result',
        queryParams: {
          'keyword': keyword,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
