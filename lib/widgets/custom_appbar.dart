import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(67.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 4.0,
        color: Palette.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 5.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Palette.green,
                    Palette.blue,
                  ],
                ),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 19.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Palette.green,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
