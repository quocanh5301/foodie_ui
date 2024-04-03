import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/app_state/bloc/app_cubit.dart';
import 'package:foodie/core/app_state/provider/app_provider.dart';
import 'package:foodie/core/app_state/repository/app_repository.dart';
import 'package:foodie/core/util/notification.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_cubit.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/provider/add_new_recipe_provider.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/repository/add_new_recipe_repository.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_cubit.dart';
import 'package:foodie/feature/home/bookmark_tab/provider/bookmark_recipe_provider.dart';
import 'package:foodie/feature/home/bookmark_tab/repository/bookmark_recipe_repository.dart';
import 'package:foodie/feature/home/explore_tab/bloc/explore_cubit.dart';
import 'package:foodie/feature/home/explore_tab/provider/explore_provider.dart';
import 'package:foodie/feature/home/explore_tab/repository/explore_repository.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_cubit.dart';
import 'package:foodie/feature/home/profile_tab/provider/profile_provider.dart';
import 'package:foodie/feature/home/profile_tab/repository/profile_repository.dart';
import 'package:foodie/feature/login/bloc/login_cubit.dart';
import 'package:foodie/feature/login/provider/login_provider.dart';
import 'package:foodie/feature/login/repository/login_repository.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/review/recipe_review_cubit.dart';
import 'package:foodie/feature/recipe_detail/provider/recipe_detail_provider.dart';
import 'package:foodie/feature/recipe_detail/repository/recipe_detail_repository.dart';
import 'package:foodie/feature/register/bloc/register_cubit.dart';
import 'package:foodie/feature/register/provider/register_provider.dart';
import 'package:foodie/feature/register/repository/register_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> init() async {
  initLogin();
  initRegister();
  initAppSetting();
  initExplore();
  initAddNewRecipe();
  initBookmarkRecipe();
  initProfile();
  initRecipeDetail();
  initUtils();
}

void initUtils() async {
  sl.registerSingleton(LocalNotificationHelper());
}

void initLogin() async {
  sl.registerFactory(() => LoginCubit(loginRepository: sl()));
  sl.registerFactory(() => LoginRepository(loginProvider: sl()));
  sl.registerFactory(() => LoginProvider(apiRequest: APIRequest()));
}

void initRegister() async {
  sl.registerFactory(() => RegisterCubit(registerRepository: sl()));
  sl.registerFactory(() => RegisterRepository(registerProvider: sl()));
  sl.registerFactory(() => RegisterProvider(apiRequest: APIRequest()));
}

void initAppSetting() async {
  sl.registerFactory(() => AppCubit(appRepository: sl()));
  sl.registerFactory(() => AppRepository(appProvider: sl()));
  sl.registerFactory(() => AppProvider(apiRequest: APIRequest()));
}

void initAddNewRecipe() async {
  sl.registerFactory(() => AddNewRecipeCubit(addNewRecipeRepository: sl()));
  sl.registerFactory(() => AddNewRecipeRepository(addNewRecipeProvider: sl()));
  sl.registerFactory(() => AddNewRecipeProvider(apiRequest: APIRequest()));
}

void initBookmarkRecipe() async {
  sl.registerFactory(() => BookmarkRecipeCubit(bookmarkRecipeRepository: sl()));
  sl.registerFactory(
      () => BookmarkRecipeRepository(bookmarkRecipeProvider: sl()));
  sl.registerFactory(() => BookmarkRecipeProvider(apiRequest: APIRequest()));
}

void initExplore() async {
  sl.registerFactory(() => ExploreCubit(exploreRepository: sl()));
  sl.registerFactory(() => ExploreRepository(exploreProvider: sl()));
  sl.registerFactory(() => ExploreProvider(apiRequest: APIRequest()));
}

void initProfile() async {
  sl.registerFactory(() => ProfileCubit(profileRepository: sl()));
  sl.registerFactory(() => ProfileRepository(profileProvider: sl()));
  sl.registerFactory(() => ProfileProvider(apiRequest: APIRequest()));
}

void initRecipeDetail() async {
  sl.registerFactory(() => RecipeDetailCubit(recipeDetailRepository: sl()));
  sl.registerFactory(() => RecipeReviewCubit(recipeDetailRepository: sl()));
  sl.registerFactory(() => RecipeDetailRepository(recipeDetailProvider: sl()));
  sl.registerFactory(() => RecipeDetailProvider(apiRequest: APIRequest()));
}
