import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/app_state/bloc/app_state.dart';
import 'package:foodie/core/app_state/repository/app_repository.dart';
import 'package:fpdart/fpdart.dart';

class AppCubit extends Cubit<AppState> {
  AppRepository appRepository;

  AppCubit({
    required this.appRepository,
  }) : super(const AppState());

  Future<void> changeLocale() async {
    final result = await Right(state.languageCode)
        .map((code) => code == "vi" ? "en" : "vi")
        .toTaskEither()
        .flatMap((newLang) => TaskEither(
            () async => await appRepository.changeLocale(newLang).run()))
        .run();

    result.fold(
      (error) => debugPrint("changeLocale $error"),
      (currLang) => emit(state.copyWith(languageCode: currLang)),
    );
  }

  Future<void> loadCurrentLanguage() async {
    final result = await appRepository.loadCurrentLanguage().run();
    result.fold(
      (error) => debugPrint("loadCurrentLanguage $error"),
      (currLang) => emit(state.copyWith(languageCode: currLang)),
    );
  }

  void switchNoti() =>
      emit(state.copyWith(notificationOn: !(state.notificationOn)));
}
