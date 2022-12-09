import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iitu_web/core/error/failure.dart';
import 'package:iitu_web/features/auth/model/user_dto.dart';
import 'package:iitu_web/features/auth/repository/auth_repository.dart';

part 'reg_cubit.freezed.dart';

class RegCubit extends Cubit<RegState> {
  RegCubit(
    this._authRepository,
  ) : super(const RegState.initialState());
  final IAuthRepository _authRepository;

  Future<void> registration({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(const RegState.loadingState());

    final result = await _authRepository.registration(
      email: email,
      password: password,
      name: name,
    );

    result.fold(
      (l) {
        emit(RegState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(RegState.loadedState(user: r));
      },
    );
  }
}

@freezed
class RegState with _$RegState {
  const factory RegState.initialState() = _InitialState;

  const factory RegState.loadedState({
    required UserDTO user,
  }) = _LoadedState;

  const factory RegState.loadingState() = _LoadingState;

  const factory RegState.errorState({
    required String message,
  }) = _ErrorState;
}
