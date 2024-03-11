import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/register/bloc/register_state.dart';
import 'package:foodie/feature/register/repository/register_repository.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.registerRepository})
      : super(const RegisterState());

  final RegisterRepository registerRepository;

  void setEmail(String email) => emit(state.copyWith(email: email));

  void setPassword(String password) => emit(state.copyWith(password: password));

  void setName(String name) => emit(state.copyWith(name: name));

  void setShowPassword() =>
      emit(state.copyWith(isShowPassword: !state.isShowPassword));

  Future<void> register() async {
    emit(state.copyWith(
      registerStatus: RegisterStatus.loading,
      errorMessage: '',
    ));
    final result = await registerRepository
        .register(
          email: state.email,
          password: state.password,
          name: state.name,
        )
        .run();
    result.match(
      (error) => emit(
        state.copyWith(
          registerStatus: RegisterStatus.failure,
          errorMessage: error,
        ),
      ),
      (success) => emit(
        state.copyWith(registerStatus: RegisterStatus.success),
      ),
    );
  }
}
