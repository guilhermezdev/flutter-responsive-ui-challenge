import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.lightBlue,
      child: Column(
        children: [
          const SizedBox(height: 18.0),
          const Text(
            'Deine Job\nWebsite',
            style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.26,
            ),
            textAlign: TextAlign.center,
          ),
          SvgPicture.asset(
            'assets/svg/handshake.svg',
          ),
          const SizedBox(height: 64.0),
        ],
      ),
    );
  }
}
