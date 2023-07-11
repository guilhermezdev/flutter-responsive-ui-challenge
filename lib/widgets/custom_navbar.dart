import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/widgets/button.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: const ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 24.0,
          ),
          child: CustomButton(),
        ),
      ),
    );
  }
}
