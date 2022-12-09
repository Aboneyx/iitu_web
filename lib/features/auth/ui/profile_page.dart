import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/app/bloc/app_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AppBloc, AppState>(
        listener: (context, state) {
          state.whenOrNull(
            notAuthorizedState: () {
              context.router.pop();
            },
          );
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white60,
                      width: 540,
                      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 100),
                      child: Column(
                        children: [
                          const Text(
                            'IITU Clubs',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 20),
                          state.maybeWhen(
                            inAppState: (user) {
                              return Text(
                                'Welcome, ${user.name}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              );
                            },
                            orElse: () => const SizedBox(),
                          ),
                          const SizedBox(height: 20),
                          const Divider(),
                          const SizedBox(height: 50),
                          Container(
                            height: 70,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: AppColors.kPrimaryColor,
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.person_outline_outlined,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  'Profile',
                                  style: GoogleFonts.poppins().copyWith(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            height: 70,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: AppColors.kGray,
                            ),
                            child: InkWell(
                              onTap: () {
                                BlocProvider.of<AppBloc>(context).add(const AppEvent.exiting());
                                // context.router.pushAndPopUntil(
                                //   const LauncherRoute(),
                                //   predicate: (route) => false,
                                // );
                              },
                              borderRadius: BorderRadius.circular(40),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.logout,
                                    size: 35,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'Log out',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
