import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/user_password_update/bloc/user_password_update_state.dart';
import 'package:foodie/feature/user_password_update/repository/user_password_update_repository.dart';

class UserPasswordUpdateCubit extends Cubit<UserPasswordUpdateState> {
  UserPasswordUpdateCubit({required this.userPasswordUpdateRepository})
      : super(const UserPasswordUpdateState());

  final UserPasswordUpdateRepository userPasswordUpdateRepository;

  Future<void> updateUserPassword() async {
    emit(
      state.copyWith(
        userPasswordUpdateStatus: UserPasswordUpdateStatus.loading,
        mess: '',
      ),
    );
    if (state.oldPassword == state.newPassword) {
      emit(
        state.copyWith(
          userPasswordUpdateStatus: UserPasswordUpdateStatus.failure,
          mess: 'New password must be different from old password',
        ),
      );
      return;
    } else if (state.newPassword != state.confirmNewPassword) {
      emit(
        state.copyWith(
          userPasswordUpdateStatus: UserPasswordUpdateStatus.failure,
          mess: 'New password and confirm new password must be the same',
        ),
      );
      return;
    }
    final result = await userPasswordUpdateRepository
        .changePassword(
          oldPassword: state.oldPassword,
          newPassword: state.newPassword,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          userPasswordUpdateStatus: UserPasswordUpdateStatus.failure,
          mess: error,
        ),
      ),
      (success) => emit(
        state.copyWith(
          userPasswordUpdateStatus: UserPasswordUpdateStatus.success,
          mess: success,
        ),
      ),
    );
  }

  void setOldPassword(String oldPassword) => emit(state.copyWith(
        oldPassword: oldPassword,
      ));

  void setNewPassword(String newPassword) => emit(state.copyWith(
        newPassword: newPassword,
      ));

  void setConfirmNewPassword(String confirmNewPassword) => emit(
        state.copyWith(
          confirmNewPassword: confirmNewPassword,
        ),
      );
}
