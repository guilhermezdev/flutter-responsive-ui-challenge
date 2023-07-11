import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
