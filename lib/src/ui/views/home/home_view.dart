import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/ui/views/keyboard/keyboard_view.dart';
import 'package:flutter_calculator/src/ui/widgets/display_state.dart';
import 'package:stacked/stacked.dart';

import './home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Column(
            children: <Widget>[Display(), KeyboardView()],
          ),
        );
      },
    );
  }
}
