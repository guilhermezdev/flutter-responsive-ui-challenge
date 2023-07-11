import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/screens/home_mobile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondSegment extends StatelessWidget {
  const SecondSegment({
    super.key,
    required this.selectedSegment,
  });

  final Segment selectedSegment;

  String get imagePath {
    if (selectedSegment == Segment.first) {
      return 'assets/svg/second_section.svg';
    } else if (selectedSegment == Segment.second) {
      return 'assets/svg/second_section_2.svg';
    }
    return 'assets/svg/second_section_3.svg';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.lightBlue,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(height: 64.0),
          RichText(
            text: const TextSpan(
              text: '2.',
              style: TextStyle(
                fontSize: 130.0,
                color: Color(0xff718096),
              ),
              children: [
                TextSpan(
                  text: 'Erstellen dein Lebenslauf',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff718096),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 67.0),
              child: SvgPicture.asset(imagePath),
            ),
          ),
          const SizedBox(height: 64.0),
        ],
      ),
    );
  }
}
