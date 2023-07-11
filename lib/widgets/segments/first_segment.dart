import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/screens/home_mobile_screen.dart';
import 'package:flutter_challenge/widgets/custom_segmented_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstSegment extends StatelessWidget {
  const FirstSegment({
    super.key,
    required this.selectedSegment,
    required this.onSelection,
  });

  final Segment selectedSegment;

  final void Function(Segment) onSelection;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 50.0,
              child: CustomSegmentedButtons(
                selected: selectedSegment,
                onSelection: onSelection,
              ),
            ),
          ),
          const SizedBox(height: 32.0),
          const Text(
            'Drei einfache Schritte\nzu deinem neuen Job',
            style: TextStyle(
              color: Color(0xff4A5568),
              fontSize: 21.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 32.0),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Stack(
              children: [
                Positioned(
                  right: 40.0,
                  child: SvgPicture.asset('assets/svg/first_section.svg'),
                ),
                Positioned(
                  left: 20.0,
                  top: 90.0,
                  child: RichText(
                    text: const TextSpan(
                      text: '1.',
                      style: TextStyle(
                          fontSize: 130.0,
                          color: Color(0xff718096),
                          letterSpacing: 0.0),
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
                ),
              ],
            ),
          ),
          const SizedBox(height: 32.0),
        ],
      ),
    );
  }
}
