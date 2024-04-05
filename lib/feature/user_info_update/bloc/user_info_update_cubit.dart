import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/user_info_update/bloc/user_info_update_state.dart';
import 'package:foodie/feature/user_info_update/repository/user_info_update_repository.dart';

class UserInfoUpdateCubit extends Cubit<UserInfoUpdateState> {
  UserInfoUpdateCubit({required this.userInfoUpdateRepository})
      : super(const UserInfoUpdateState());

  final UserInfoUpdateRepository userInfoUpdateRepository;

  Future<void> updateUserInfo() async {
    emit(
      state.copyWith(
        userInfoUpdateStatus: UserInfoUpdateStatus.loading,
        mess: '',
      ),
    );
    final result = await userInfoUpdateRepository
        .updateUserInfo(
          userName: state.userName,
          userEmail: state.userEmail,
          description: state.description,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          userInfoUpdateStatus: UserInfoUpdateStatus.failure,
          mess: error,
        ),
      ),
      (success) => emit(
        state.copyWith(
          userInfoUpdateStatus: UserInfoUpdateStatus.success,
        ),
      ),
    );
  }

  void setUserName(String userName) => emit(state.copyWith(
        userName: userName,
      ));
  void setUserEmail(String userEmail) => emit(state.copyWith(
        userEmail: userEmail,
      ));

  void setDescription(String description) => emit(
        state.copyWith(
          description: description,
        ),
      );
}
