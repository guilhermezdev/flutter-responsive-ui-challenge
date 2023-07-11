import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/screens/home_mobile_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '3.',
                style: TextStyle(
                  fontSize: 130.0,
                  color: Color(0xff718096),
                ),
              ),
              Text(
                'Mit nur einem Klick bewerben',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff718096),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 10.0,
            right: 7.0,
            child: SvgPicture.asset(imagePath),
          ),
        ],
      ),
    );
  }
}
