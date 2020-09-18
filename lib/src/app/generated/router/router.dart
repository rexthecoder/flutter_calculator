import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_calculator/src/ui/views/startup/startup_view.dart';
import 'package:flutter_calculator/src/ui/views/home/home_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
  ],
)
class $Router {}