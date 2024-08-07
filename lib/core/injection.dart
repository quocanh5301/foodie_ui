import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/widget/controller/dialog_controller.dart';
import 'package:foodie/core/widget/controller/dropdown_widget_controller.dart';
import 'package:foodie/core/widget/controller/loading_controller.dart';
import 'package:foodie/feature/delete_recipe/bloc/delete_recipe_cubit.dart';
import 'package:foodie/feature/delete_recipe/provider/delete_recipe_provider.dart';
import 'package:foodie/feature/delete_recipe/repository/delete_recipe_repository.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_cubit.dart';
import 'package:foodie/feature/edit_recipe/provider/edit_recipe_provider.dart';
import 'package:foodie/feature/edit_recipe/repository/edit_recipe_repository.dart';
import 'package:foodie/feature/notification/bloc/notification_cubit.dart';
import 'package:foodie/feature/notification/provider/notification_provider.dart';
import 'package:foodie/feature/notification/repository/notification_repository.dart';
import 'package:foodie/feature/search_result/bloc/search_result_cubit.dart';
import 'package:foodie/feature/search_result/provider/search_result_provider.dart';
import 'package:foodie/feature/search_result/repository/search_result_repository.dart';
import 'package:foodie/feature/setting/bloc/app_cubit.dart';
import 'package:foodie/feature/setting/provider/app_provider.dart';
import 'package:foodie/feature/setting/repository/app_repository.dart';
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
import 'package:foodie/feature/user_info_update/bloc/user_info_update_cubit.dart';
import 'package:foodie/feature/user_info_update/provider/user_info_update_provider.dart';
import 'package:foodie/feature/user_info_update/repository/user_info_update_repository.dart';
import 'package:foodie/feature/user_password_update/bloc/user_password_update_cubit.dart';
import 'package:foodie/feature/user_password_update/provider/user_password_update_provider.dart';
import 'package:foodie/feature/user_password_update/repository/user_password_update_repository.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_cubit.dart';
import 'package:foodie/feature/user_profile/provider/user_profile_provider.dart';
import 'package:foodie/feature/user_profile/repository/user_profile_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> init() async {
  initCore();
  initLogin();
  initRegister();
  initAppSetting();
  initExplore();
  initAddNewRecipe();
  initBookmarkRecipe();
  initProfile();
  initRecipeDetail();
  initUpdateUserInfo();
  initUpdateUserPassword();
  initUserProfile();
  initSearchResult();
  initNotification();
  initDeleteRecipe();
  initEditRecipe();
}

void initCore() async {
  sl.registerSingleton(DropDownWidgetController());
  sl.registerSingleton(LoadingDialogController());
  sl.registerSingleton(DialogWidgetController());
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
  sl.registerSingleton(AppProvider(apiRequest: APIRequest()));
  sl.registerSingleton(AppRepository(appProvider: sl()));
  sl.registerSingleton(AppCubit(appRepository: sl()));
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

void initUpdateUserInfo() async {
  sl.registerFactory(() => UserInfoUpdateCubit(userInfoUpdateRepository: sl()));
  sl.registerFactory(() => UserInfoUpdateRepository(updateProvider: sl()));
  sl.registerFactory(() => UserInfoUpdateProvider(apiRequest: APIRequest()));
}

void initUpdateUserPassword() async {
  sl.registerFactory(
      () => UserPasswordUpdateCubit(userPasswordUpdateRepository: sl()));
  sl.registerFactory(
      () => UserPasswordUpdateRepository(userPasswordUpdateProvider: sl()));
  sl.registerFactory(
      () => UserPasswordUpdateProvider(apiRequest: APIRequest()));
}

void initUserProfile() async {
  sl.registerFactory(() => UserProfileCubit(userProfileRepository: sl()));
  sl.registerFactory(() => UserProfileRepository(userProfileProvider: sl()));
  sl.registerFactory(() => UserProfileProvider(apiRequest: APIRequest()));
}

void initSearchResult() async {
  sl.registerFactory(() => SearchResultCubit(searchResultRepository: sl()));
  sl.registerFactory(() => SearchResultRepository(searchResultProvider: sl()));
  sl.registerFactory(() => SearchResultProvider(apiRequest: APIRequest()));
}

void initNotification() async {
  sl.registerFactory(() => NotificationCubit(notifcationRepository: sl()));
  sl.registerFactory(() => NotificationRepository(notificationProvider: sl()));
  sl.registerFactory(() => NotificationProvider(apiRequest: APIRequest()));
}

void initDeleteRecipe() async {
  sl.registerFactory(() => DeleteRecipeCubit(deleteRecipeRepository: sl()));
  sl.registerFactory(() => DeleteRecipeRepository(deleteRecipeProvider: sl()));
  sl.registerFactory(() => DeleteRecipeProvider(apiRequest: APIRequest()));
}

void initEditRecipe() async {
  sl.registerFactory(() => EditRecipeCubit(editRecipeRepository: sl()));
  sl.registerFactory(() => EditRecipeRepository(editRecipeProvider: sl()));
  sl.registerFactory(() => EditRecipeProvider(apiRequest: APIRequest()));
}
