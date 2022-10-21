import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/app/widgets/custom_button.dart';
import 'package:iitu_web/features/app/widgets/custom_text_field.dart';
import 'package:iitu_web/features/app/widgets/validators.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({super.key});

  @override
  State<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Container(
        height: 690,
        width: 690,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 83).copyWith(
          top: 29,
          bottom: 37,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.kPrimaryColor,
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text(
                'Login',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 44),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 37,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      validator: notEmptyValidator,
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
                    const SizedBox(height: 15),
                    Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
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
                    'Sign in',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: customButtonStyle(
                    backgroundColor: AppColors.kPrimaryBlack,
                  ),
                  onClick: () {},
                ),
              ),
              const SizedBox(height: 28),
              Text(
                'or continue with',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 187),
                child: CustomButton(
                  height: 50,
                  body: Image.asset('assets/images/google.png'),
                  style: customButtonStyle(
                    backgroundColor: AppColors.kWhite,
                  ),
                  onClick: () {},
                ),
              ),
              const SizedBox(height: 28),
              Text(
                'Don’t have an account yet? Register for free',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
