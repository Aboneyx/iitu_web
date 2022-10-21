import 'package:flutter/material.dart';
import 'package:iitu_web/core/common/widgets/responsive_widget.dart';
import 'package:iitu_web/core/extension/extensions.dart';
import 'package:iitu_web/features/home/presentation/widgets/footer_widget.dart';
import 'package:iitu_web/features/home/presentation/widgets/home_body_widget.dart';

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
              children: const [
                SizedBox(height: 180),
                HomeBodyWidget(),
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
              padding: EdgeInsets.symmetric(horizontal: context.mediaQuery.size.width * .1),
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
