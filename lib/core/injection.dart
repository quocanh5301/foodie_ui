import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/app_state/bloc/app_cubit.dart';
import 'package:foodie/core/app_state/provider/app_provider.dart';
import 'package:foodie/core/app_state/repository/app_repository.dart';
import 'package:foodie/feature/login/bloc/login_cubit.dart';
import 'package:foodie/feature/login/provider/login_provider.dart';
import 'package:foodie/feature/login/repository/login_repository.dart';
import 'package:foodie/feature/register/bloc/register_cubit.dart';
import 'package:foodie/feature/register/provider/register_provider.dart';
import 'package:foodie/feature/register/repository/register_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> init() async {
  initLogin();
  initRegister();
  initAppSetting();
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
  sl.registerFactory(() => AppProvider());
}
