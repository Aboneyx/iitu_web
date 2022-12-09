import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iitu_web/features/app/bloc/app_bloc.dart';
import 'package:iitu_web/features/home/presentation/ui/home_page.dart';

class Launcher extends StatefulWidget {
  const Launcher({super.key});

  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AppBloc>(context).add(const AppEvent.checkAuth());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return const HomePage();
      },
    );
  }
}
