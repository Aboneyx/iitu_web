import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/core/services/locator_service.dart';
import 'package:iitu_web/features/app/bloc/app_bloc.dart';
import 'package:iitu_web/features/app/widgets/custom/custom_snackbars.dart';
import 'package:iitu_web/features/app/widgets/custom_button.dart';
import 'package:iitu_web/features/app/widgets/custom_text_field.dart';
import 'package:iitu_web/features/app/widgets/validators.dart';
import 'package:iitu_web/features/auth/bloc/login_cubit.dart';
import 'package:iitu_web/features/auth/bloc/reg_cubit.dart';
import 'package:iitu_web/features/auth/repository/auth_repository.dart';
import 'package:iitu_web/features/auth/ui/login_dialog.dart';

class RegDialog extends StatefulWidget {
  const RegDialog({super.key});

  @override
  State<RegDialog> createState() => _RegDialogState();
}

class _RegDialogState extends State<RegDialog> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Container(
        height: 690 - 70,
        width: 690,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 83).copyWith(
          top: 29,
          bottom: 37,
        ),
        child: BlocConsumer<RegCubit, RegState>(
          listener: (context, state) {
            state.whenOrNull(
              errorState: (String message) {
                buildErrorCustomSnackBar(context, message);
              },
              loadedState: (user) {
                BlocProvider.of<AppBloc>(context).add(AppEvent.logining(user: user));
                context.router.pop();
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loadingState: () => const Center(child: CircularProgressIndicator()),
              orElse: () {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppColors.kPrimaryColor,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        'Sign Up',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 37,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 2),
                            CustomTextField(
                              controller: nameController,
                              hintText: 'Name',
                              // validator: emailValidator,
                            ),
                            const SizedBox(height: 27),
                            Text(
                              'Email',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 2),
                            CustomTextField(
                              controller: emailController,
                              hintText: 'username@gmail.com',
                              validator: emailValidator,
                            ),
                            const SizedBox(height: 27),
                            Text(
                              'Password',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 2),
                            CustomTextField(
                              controller: passwordController,
                              hintText: 'Password',
                              validator: notEmptyValidator,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 26),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: CustomButton(
                          height: 50,
                          body: Text(
                            'Sign Up',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: customButtonStyle(
                            backgroundColor: AppColors.kPrimaryBlack,
                          ),
                          onClick: () {
                            if (!emailController.text.emailValidator()) {
                              buildErrorCustomSnackBar(context, 'Incorrect Email');
                              return;
                            }

                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty ||
                                nameController.text.isEmpty) {
                              buildErrorCustomSnackBar(context, 'All fields are required!');
                              return;
                            }

                            BlocProvider.of<RegCubit>(context).registration(
                              email: emailController.text,
                              password: passwordController.text,
                              name: nameController.text,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 28),
                      RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign In',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.router.pop().whenComplete(() {
                                    showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return BlocProvider(
                                          create: (context) => LoginCubit(sl<IAuthRepository>()),
                                          child: const LoginDialog(),
                                        );
                                      },
                                    );
                                  });
                                },
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
