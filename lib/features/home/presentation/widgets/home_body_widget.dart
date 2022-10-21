import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/app/widgets/custom_button.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mediaQuery.size.width * .1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    SizedBox(height: context.mediaQuery.size.width * .05),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 433,
                        maxWidth: 384,
                      ),
                      child: SvgPicture.asset('assets/icons/left_photo.svg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: context.mediaQuery.size.width * .03,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/left_rectangle.svg'),
                        const SizedBox(width: 22),
                        const Flexible(
                          child: Text(
                            'We will help to find your hobby',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: 22),
                        SvgPicture.asset('assets/icons/right_rectangle.svg'),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Don’t miss your students year',
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 150),
                    CustomButton(
                      height: 65,
                      width: 181,
                      body: Text(
                        'List of Clubs',
                        style: GoogleFonts.poppins().copyWith(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onClick: () {},
                      style: customButtonStyle(
                        backgroundColor: AppColors.kPrimaryColor,
                        radius: 5,
                      ),
                    ),
                    const SizedBox(height: 230),
                  ],
                ),
              ),
              SizedBox(
                width: context.mediaQuery.size.width * .03,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const SizedBox(height: 90),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                        maxWidth: 500,
                        // minWidth: 200,
                      ),
                      child: Image.asset('assets/images/right_image.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 150),
        ],
      ),
    );
  }
}
