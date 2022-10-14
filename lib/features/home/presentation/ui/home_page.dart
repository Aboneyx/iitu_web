import 'package:flutter/material.dart';
import 'package:iitu_web/core/common/widgets/responsive_widget.dart';

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
        largeScreen: ListView(
          children: [
            Container(
              height: 100,
              width: 100,
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
