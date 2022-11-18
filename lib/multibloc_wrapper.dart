import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iitu_web/core/services/locator_service.dart';
import 'package:iitu_web/features/home/data/repository/club_repository.dart';
import 'package:iitu_web/features/home/presentation/bloc/clubs_cubit.dart';

class MultiblocWrapper extends StatelessWidget {
  final Widget child;
  const MultiblocWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ///
        /// App BloC
        ///
        // BlocProvider<AppBloc>(
        //   create: (context) => sl<AppBloc>(), //..add(const AppEvent.startListenDio()),
        // ),
        BlocProvider<ClubsCubit>(
          create: (context) => ClubsCubit(sl<ClubRepository>())..getClubs(),
        ),
      ],
      child: child,
    );
  }
}
