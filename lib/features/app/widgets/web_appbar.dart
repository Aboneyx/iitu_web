import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/app/widgets/custom_button.dart';
import 'package:iitu_web/features/app/widgets/login_dialog.dart';

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
              Text(
                'Clubs',
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
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
          Row(
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
                  _showMyDialog();
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
                onClick: () {},
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
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return const LoginDialog();
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
}