import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/core/services/locator_service.dart';
import 'package:iitu_web/features/app/bloc/app_bloc.dart';
import 'package:iitu_web/features/app/router/app_router.dart';
import 'package:iitu_web/features/app/widgets/custom_button.dart';
import 'package:iitu_web/features/auth/bloc/login_cubit.dart';
import 'package:iitu_web/features/auth/bloc/reg_cubit.dart';
import 'package:iitu_web/features/auth/repository/auth_repository.dart';
import 'package:iitu_web/features/auth/ui/login_dialog.dart';
import 'package:iitu_web/features/auth/ui/reg_dialog.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({super.key});

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.mediaQuery.size.width * .1,
        vertical: 40,
      ),
      height: 120,
      width: context.mediaQuery.size.width,
      // color: const Color.fromARGB(255, 218, 218, 218),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Text(
                'IITU clubs',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 120),
              Text(
                'Home page',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 50),
              InkWell(
                onTap: () {
                  context.router.push(const ClubsListPageRoute());
                },
                child: Text(
                  'Clubs',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 50),
              Text(
                'Contacts',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return state.maybeWhen(
                inAppState: (user) {
                  return InkWell(
                    onTap: () {
                      context.router.push(const ProfilePageRoute());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.person,
                          size: 30,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          user.name ?? '',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                loadingState: () {
                  return const SizedBox.square(
                    dimension: 40,
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () {
                  return Row(
                    children: [
                      CustomButton(
                        width: 85,
                        height: 40,
                        body: Text(
                          'Log In',
                          style: GoogleFonts.poppins().copyWith(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        onClick: () {
                          showLoginDialog();
                        },
                        style: customButtonStyle(
                          backgroundColor: AppColors.kPrimaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      CustomButton(
                        width: 85,
                        height: 40,
                        body: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins().copyWith(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        onClick: () {
                          showRegDialog();
                        },
                        style: customButtonStyle(
                          backgroundColor: AppColors.kPrimaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> showLoginDialog() async {
    return showDialog<void>(
      context: context,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return BlocProvider(
          create: (context) => LoginCubit(sl<IAuthRepository>()),
          child: const LoginDialog(),
        );
        //   height: 690,
        //   width: 690,
        //   child: AlertDialog(
        //     title: const Text('AlertDialog Title'),
        //     content: SingleChildScrollView(
        //       child: ListBody(
        //         children: const <Widget>[
        //           Text('This is a demo alert dialog.'),
        //           Text('Would you like to approve of this message?'),
        //         ],
        //       ),
        //     ),
        //     actions: <Widget>[
        //       TextButton(
        //         child: const Text('Approve'),
        //         onPressed: () {
        //           Navigator.of(context).pop();
        //         },
        //       ),
        //     ],
        //   ),
        // );
      },
    );
  }

  Future<void> showRegDialog() async {
    return showDialog<void>(
      context: context,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return BlocProvider(
          create: (context) => RegCubit(sl<IAuthRepository>()),
          child: const RegDialog(),
        );
      },
    );
  }
}
