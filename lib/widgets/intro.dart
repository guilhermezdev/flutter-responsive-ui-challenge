import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/widgets/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Container(
        color: Palette.lightBlue,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 18.0),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deine Job\nWebsite',
                  style: TextStyle(
                    fontSize: 65.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.26,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 320.0,
                  child: CustomButton(),
                )
              ],
            ),
            const SizedBox(width: 240.0),
            CircleAvatar(
              radius: 260.0,
              backgroundColor: Palette.white,
              child: SvgPicture.asset(
                'assets/svg/handshake.svg',
              ),
            ),
            const SizedBox(height: 64.0),
          ],
        ),
      );
    }

    return Container(
      color: Palette.lightBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
