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
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border(
                          right: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                      width: 540,
                      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 100),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              context.router.pop();
                            },
                            child: const Text(
                              'IITU Clubs',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
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
                        padding: const EdgeInsets.all(100),
                        color: Colors.white,
                        child: state.maybeWhen(
                          inAppState: (user) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 80),
                                const Text(
                                  'Basic Information',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  width: 300,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Name:',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '${user.name}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Email:',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '${user.email}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          orElse: () => const SizedBox(),
                        ),
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
