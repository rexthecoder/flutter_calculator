import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_calculator/src/ui/global/ui_helpers.dart';
import 'package:flutter_calculator/src/ui/global/app_colors.dart';
import 'package:flutter_calculator/src/ui/views/startup/startup_view_model.dart';

class StartupView extends StatefulWidget {
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      viewModelBuilder: () => StartupViewModel(),
      onModelReady: (StartupViewModel model) => model.handleStartup(),
      builder: (
        BuildContext context,
        StartupViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Text("✌🏾",style: TextStyle(fontSize: 100),),
                SizedBox(
                  height: blockSizeHorizontal(context) * 10,
                ),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(primaryColor),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}