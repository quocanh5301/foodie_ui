// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/feature/home/home_base_tab.dart';
import 'package:foodie/feature/login/ui/login_screen.dart';
import 'package:foodie/feature/recipe_detail/ui/recipe_detail_screen.dart';
import 'package:foodie/feature/register/ui/register_screen.dart';
import 'package:foodie/feature/setting/ui/user_setting_screen.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: SharedPref.getAccessToken().isEmpty
      ? const LoginRoute().location
      : const HomeRoute().location,
  routes: $appRoutes,
);

@TypedGoRoute<LoginRoute>(path: Routes.login)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => LoginScreen();
}

@TypedGoRoute<RegisterRoute>(path: Routes.register)
class RegisterRoute extends GoRouteData {
  const RegisterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => RegisterScreen();
}

@TypedGoRoute<HomeRoute>(path: Routes.home)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<RecipeDetailRoute>(path: Routes.recipeDetail)
class RecipeDetailRoute extends GoRouteData {
  const RecipeDetailRoute({required this.recipeId});

  final int recipeId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      RecipeDetailScreen(recipeId: recipeId);
}

@TypedGoRoute<UserSettingRoute>(path: Routes.setting)
class UserSettingRoute extends GoRouteData {
  const UserSettingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UserSettingScreen();
}

class Routes {
  static const String login = '/login';
  static const String register = '/register';
  static const String forgetPass = '/forget_pass';
  static const String home = '/home';
  static const String recipeDetail = '/recipe_detail';
  static const String setting = '/setting';
}
