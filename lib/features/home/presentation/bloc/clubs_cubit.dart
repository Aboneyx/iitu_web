import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iitu_web/core/error/failure.dart';
import 'package:iitu_web/features/home/data/model/club_dto.dart';
import 'package:iitu_web/features/home/data/repository/club_repository.dart';

part 'clubs_cubit.freezed.dart';

class ClubsCubit extends Cubit<ClubsState> {
  final ClubRepository _clubRepository;
  ClubsCubit(this._clubRepository) : super(const ClubsState.initialState());

  Future<void> getClubs() async {
    emit(const ClubsState.loadingState());

    final result = await _clubRepository.getClubs();

    result.fold(
      (l) {
        emit(ClubsState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        log(r.toString());
        emit(ClubsState.loadedState(clubs: r));
      },
    );
  }
}

@freezed
class ClubsState with _$ClubsState {
  const factory ClubsState.initialState() = _InitialState;

  const factory ClubsState.loadingState() = _LoadingState;

  const factory ClubsState.loadedState({
    required List<ClubDTO> clubs,
  }) = _LoadedState;

  const factory ClubsState.errorState({
    required String message,
  }) = _ErrorState;
}
