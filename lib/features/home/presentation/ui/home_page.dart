import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iitu_web/core/common/widgets/responsive_widget.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/features/home/presentation/widgets/footer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        largeScreen: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(height: 180),
                Padding(
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
                ),
                FooterWidget(),
              ],
            ),
            Container(
              height: 120,
              width: context.mediaQuery.size.width,
              color: Colors.red,
            ),
          ],
        ),
        smallScreen: ListView(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
