import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:flutter_calculator/src/app/generated/locator/locator.dart';
import 'package:flutter_calculator/src/app/generated/router/router.gr.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:stacked_services/stacked_services.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Sets logging level
  Logger.level = Level.debug;

  // Register all the models and services before the app starts
  setupLocator();

  // Runs the app :)
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter_calculator',
        initialRoute: Routes.startupView,
        onGenerateRoute: Router().onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
        themeMode: ThemeMode.light,
        theme: NeumorphicThemeData(
          baseColor: Color(0xFFFFFFFF),
          lightSource: LightSource.topLeft,
          depth: 10,
        ),
        darkTheme: NeumorphicThemeData(
          baseColor: Color(0xFF3E3E3E),
          lightSource: LightSource.topLeft,
          depth: 6,
        ));
  }
}
