import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/widgets/custom_appbar.dart';
import 'package:flutter_challenge/widgets/custom_navbar.dart';
import 'package:flutter_challenge/widgets/intro.dart';
import 'package:flutter_challenge/widgets/segments/first_segment.dart';
import 'package:flutter_challenge/widgets/segments/second_segment.dart';
import 'package:flutter_challenge/widgets/segments/third_segment.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

enum Segment {
  first,
  second,
  third,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Segment selectedSegment;

  @override
  void initState() {
    super.initState();
    selectedSegment = Segment.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Palette.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperOne(),
              child: const IntroWidget(),
            ),
            FirstSegment(
              onSelection: (newSegment) {
                setState(() {
                  selectedSegment = newSegment;
                });
              },
              selectedSegment: selectedSegment,
            ),
            ClipPath(
              clipper: WaveClipperOne(),
              child: ClipPath(
                clipper: WaveClipperOne(
                  reverse: true,
                ),
                child: SecondSegment(
                  selectedSegment: selectedSegment,
                ),
              ),
            ),
            ThirdSegment(
              selectedSegment: selectedSegment,
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
      bottomNavigationBar: !kIsWeb ? const CustomBottomNavBar() : null,
    );
  }
}
