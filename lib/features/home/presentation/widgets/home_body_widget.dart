import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/core/resources/constants.dart';
import 'package:iitu_web/features/app/router/app_router.dart';
import 'package:iitu_web/features/app/widgets/custom_button.dart';
import 'package:iitu_web/features/home/presentation/ui/temp_page.dart';

class HomeBodyWidget extends StatefulWidget {
  const HomeBodyWidget({super.key});

  @override
  State<HomeBodyWidget> createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  List<String> banners = [
    'assets/temp/banner.png',
    'assets/temp/banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    final carouselWidth = context.mediaQuery.size.width * .8;
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
                      onClick: () {
                        context.router.push(const TempPageRoute());
                      },
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
          // const SizedBox(height: 150),
          const Text(
            'Clubs',
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Container(
            height: 1,
            width: 277,
            color: Colors.black,
          ),
          const SizedBox(height: 64),
          Container(
            width: carouselWidth,
            height: carouselWidth * 9 / 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: CarouselSlider(
              items: banners
                  .map(
                    (e) => InkWell(
                      onTap: () {
                        context.router.push(const TempPageRoute());
                      },
                      child: Image.asset(e),
                    ),
                  )
                  .toList(),
              // carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
          ),
          const SizedBox(height: 150),
        ],
      ),
    );
  }
}
