import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/ui/widgets/keybord_view_design.dart';
import 'package:stacked/stacked.dart';

import './keyboard_view_model.dart';

class KeyboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<KeyboardViewModel>.reactive(
      viewModelBuilder: () => KeyboardViewModel(),
      builder: (
        BuildContext context,
        KeyboardViewModel model,
        Widget child,
      ) {
        return Container(
          color: Colors.black,
          child: Center(
              child: AspectRatio(
            aspectRatio: 1.0, // To center the GridView
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(4.0),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: <String>[
                '7', '8', '9', '/',
                '4', '5', '6', '*',
                '1', '2', '3', '-',
                '⬅️', '0', '=', '+',
              ].map((key) {
                return GridTile(
                  child: KeyboardKey(key),
                );
              }).toList(),
            ),
          )),
        );
      },
    );
  }
}
