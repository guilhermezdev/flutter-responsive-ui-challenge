import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/screens/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdSegment extends StatelessWidget {
  const ThirdSegment({super.key, required this.selectedSegment});

  final Segment selectedSegment;

  String get imagePath {
    if (selectedSegment == Segment.first) {
      return 'assets/svg/third_section.svg';
    } else if (selectedSegment == Segment.second) {
      return 'assets/svg/third_section_2.svg';
    }
    return 'assets/svg/third_section_3.svg';
  }

  String get text {
    if (selectedSegment == Segment.first) {
      return 'Mit nur einem Klick\nbewerben';
    } else if (selectedSegment == Segment.second) {
      return 'Wahle deinen neuen Mitarbeiter aus';
    }
    return 'Vermittlung nach\nProvision oder\nStundenlohn';
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Container(
        color: Palette.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 740.0,
              top: 100.0,
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffF7FAFC),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '3.',
                  style: TextStyle(
                    fontSize: 130.0,
                    color: Color(0xff718096),
                  ),
                ),
                const SizedBox(width: 16.0),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Color(0xff718096),
                  ),
                ),
                const SizedBox(width: 64.0),
                SvgPicture.asset(
                  imagePath,
                  width: 502.0,
                  height: 375.0,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Container(
      color: Palette.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF7FAFC),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '3.',
                  style: TextStyle(
                    fontSize: 130.0,
                    color: Color(0xff718096),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff718096),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: selectedSegment == Segment.first ? 10.0 : 0.0,
            right: selectedSegment == Segment.first ? 7.0 : 70.0,
            child: SvgPicture.asset(imagePath),
          ),
        ],
      ),
    );
  }
}
