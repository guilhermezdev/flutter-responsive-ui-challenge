import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/widgets/custom_appbar.dart';
import 'package:flutter_challenge/widgets/custom_navbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Palette.lightBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18.0,
            ),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
