import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/definitions/palette.dart';
import 'package:flutter_challenge/screens/home_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

// COuld use SegmentedButtons from Material3 but is still harder to use styles

class CustomSegmentedButtons extends StatelessWidget {
  const CustomSegmentedButtons({
    super.key,
    required this.selected,
    required this.onSelection,
  });

  final Segment selected;

  final void Function(Segment) onSelection;

  @override
  Widget build(BuildContext context) {
    final ItemScrollController itemScrollController = ItemScrollController();

    final first = InkWell(
      onTap: () {
        if (!kIsWeb) {
          itemScrollController.scrollTo(
              index: 0, duration: const Duration(milliseconds: 300));
        }
        onSelection.call(Segment.first);
      },
      child: Container(
        width: 160.0,
        height: 40.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffCBD5E0),
          ),
          color: Segment.first == selected ? Palette.lightGreen : Palette.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
          ),
        ),
        child: Center(
          child: Text(
            'Arbeitnehmer',
            style: TextStyle(
                color:
                    Segment.first == selected ? Palette.white : Palette.green,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );

    final second = InkWell(
      onTap: () {
        if (!kIsWeb) {
          itemScrollController.scrollTo(
              index: 1, duration: const Duration(milliseconds: 300));
        }
        onSelection.call(Segment.second);
      },
      child: Container(
        width: 160.0,
        height: 40.0,
        decoration: BoxDecoration(
          color:
              Segment.second == selected ? Palette.lightGreen : Palette.white,
          border: Border.all(
            color: const Color(0xffCBD5E0),
          ),
        ),
        child: Center(
          child: Text(
            'Arbeitgeber',
            style: TextStyle(
                color:
                    Segment.second == selected ? Palette.white : Palette.green,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );

    final third = InkWell(
      onTap: () {
        if (!kIsWeb) {
          itemScrollController.scrollTo(
              index: 2, duration: const Duration(milliseconds: 300));
        }
        onSelection.call(Segment.third);
      },
      child: Container(
        width: 160.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Segment.third == selected ? Palette.lightGreen : Palette.white,
          border: Border.all(
            color: const Color(0xffCBD5E0),
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
        ),
        child: Center(
          child: Text(
            'Temporarburo',
            style: TextStyle(
                color:
                    Segment.third == selected ? Palette.white : Palette.green,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );

    if (kIsWeb) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [first, second, third],
      );
    }

    return ScrollablePositionedList.builder(
      itemCount: 3,
      itemScrollController: itemScrollController,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) return first;
        if (index == 1) return second;
        return third;
      },
    );
  }
}
