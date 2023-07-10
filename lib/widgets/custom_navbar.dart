import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      color: Palette.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12.0),
        topRight: Radius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 24.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            gradient: const LinearGradient(
              colors: [
                Palette.green,
                Palette.blue,
              ],
            ),
            // borderRadius: borderRadius,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            child: const Text(
              'Kostenlos Registrieren',
              style: TextStyle(
                color: Palette.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
