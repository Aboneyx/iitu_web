import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iitu_web/features/auth/model/user_dto.dart';
import 'package:iitu_web/features/auth/repository/auth_repository.dart';

part 'app_bloc.freezed.dart';

const _tag = 'AppBloc';

class AppBloc extends Bloc<AppEvent, AppState> {
  final IAuthRepository _authRepository;
  // final NotAuthLogic _notAuthLogic;

  /// Статус аутентификации
  bool get isAuthenticated => false; // TODO _authRepository.isAuthenticated;
  // bool get isAgent => _authRepository.isAgent;

  AppBloc(
    this._authRepository,
    // this._notAuthLogic,
    // this._authLogout,

    // this._sendDeviceToken,
  ) : super(const AppState.loadingState()) {
    // _notAuthLogic.statusSubject.listen(
    //   (value) async {
    //     log('_startListenDio message from stream :: $value');

    //     if (value == 401) {
    //       await _authRepository
    //           .logOut(
    //         onlyLocally: true,
    //       )
    //           .whenComplete(() {
    //         add(const AppEvent.startListenDio());
    //         log('is worked');
    //         // }
    //       });
    //       // }
    //     }
    //   },
    // );

    on<AppEvent>(
      (AppEvent event, Emitter<AppState> emit) async => event.map(
        exiting: (_Exiting event) async => _exit(event, emit),
        checkAuth: (_CheckAuth event) async => _checkAuth(event, emit),
        logining: (_Logining event) async => _login(event, emit),
        refreshLocal: (_RefreshLocal event) async => _refreshLocal(event, emit),
        startListenDio: (_StartListenDio event) async => _startListenDio(event, emit),
        sendDeviceToken: (_SendDeviceToken event) async => _sendDeviceToken(event, emit),
      ),
    );
  }

  Future<void> _checkAuth(
    _CheckAuth event,
    Emitter<AppState> emit,
  ) async {
    final result = _authRepository.getUser();
    log('message');
    result.fold(
      (l) {
        emit(const AppState.notAuthorizedState());
      },
      (r) {
        emit(AppState.inAppState(user: r));
      },
    );
  }

  Future<void> _login(
    _Logining event,
    Emitter<AppState> emit,
  ) async {
    emit(AppState.inAppState(user: event.user));
  }

  Future<void> _exit(
    _Exiting event,
    Emitter<AppState> emit,
  ) async {
    emit(const AppState.notAuthorizedState());
    // final result = await _authRepository.logOut();

    // result.fold(
    //   (l) {
    //     log('##### _exit::: ${mapFailureToMessage(l)}');
    //     emit(const AppState.notAuthorizedState());
    //   },
    //   (r) => emit(const AppState.notAuthorizedState()),
    // );
  }

  Future<void> _refreshLocal(
    _RefreshLocal event,
    Emitter<AppState> emit,
  ) async {
    // await state.maybeWhen(
    //   inAppState: () async {
    //     emit(const AppState.loadingState());
    //     await Future.delayed(const Duration(milliseconds: 100));
    //     emit(const AppState.inAppState());
    //   },
    //   orElse: () async {
    //     emit(const AppState.loadingState());
    //     await Future.delayed(const Duration(milliseconds: 100));
    //     emit(const AppState.notAuthorizedState());
    //   },
    // );
  }

  Future<void> _startListenDio(
    _StartListenDio event,
    Emitter<AppState> emit,
  ) async {
    emit(const AppState.notAuthorizedState());
    // int latestStatus = 0;

    // _notAuthLogic.statusSubject.listen(
    //   (value) async {
    //     log('_startListenDio message from stream :: $value');

    //     if (value == 401) {
    //       // if (latestStatus != 401) {
    //       await _authRepository
    //           .logOut(
    //         onlyLocally: true,
    //       )
    //           .whenComplete(() {
    //         // if (!emit.isDone) {
    //         emit(const AppState.notAuthorizedState());
    //         log('is worked');
    //         // }
    //       });
    //       // }
    //     }
    //     latestStatus = value;
    //   },
    // );
  }

  Future<void> _sendDeviceToken(
    _SendDeviceToken event,
    Emitter<AppState> emit,
  ) async {
    // final result = await _authRepository.sendDeviceToken();

    // result.fold(
    //   (l) {
    //     log('_sendDeviceToken left: ${mapFailureToMessage(l)}', name: _tag);
    //   },
    //   (r) {
    //     log('_sendDeviceToken righy: $r', name: _tag);
    //   },
    // );
  }

  @override
  void onTransition(Transition<AppEvent, AppState> transition) {
    log(transition.toString(), name: _tag);
    super.onTransition(transition);
  }

  // @override
  // void onChange(Change<AppState> change) {
  //   print(change);
  //   super.onChange(change);
  // }
}

///
///
/// Event class
///
///
@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkAuth() = _CheckAuth;

  const factory AppEvent.logining({
    required UserDTO user,
  }) = _Logining;

  const factory AppEvent.exiting() = _Exiting;

  const factory AppEvent.refreshLocal() = _RefreshLocal;

  const factory AppEvent.startListenDio() = _StartListenDio;

  const factory AppEvent.sendDeviceToken() = _SendDeviceToken;
}

///
///
/// State class
///
///
@freezed
class AppState with _$AppState {
  const factory AppState.loadingState() = _LoadingState;

  const factory AppState.notAuthorizedState() = _NotAuthorizedState;

  const factory AppState.inAppState({
    required UserDTO user,
  }) = _InAppState;

  const factory AppState.errorState({
    required String message,
  }) = _ErrorState;
}
