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

  String get text {
    if (selectedSegment == Segment.first) {
      return 'Erstellen dein Lebenslauf';
    } else if (selectedSegment == Segment.second) {
      return 'Erstellen ein Jobinserat';
    }
    return 'Erhalte Vermittlungs- angebot von Arbeitgeber';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.lightBlue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: selectedSegment == Segment.second ? 32.0 : 80.0,
              ),
              child: SvgPicture.asset(imagePath),
            ),
          ),
          Positioned(
            top: 50.0,
            left: 37.0,
            child: RichText(
              maxLines: 2,
              text: TextSpan(
                text: '2.',
                style: const TextStyle(
                  fontSize: 130.0,
                  color: Color(0xff718096),
                ),
                children: [
                  TextSpan(
                    text: text,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff718096),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
