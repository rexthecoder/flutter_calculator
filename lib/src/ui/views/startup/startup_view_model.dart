import 'dart:async';

import 'package:flutter_calculator/src/app/generated/locator/locator.dart';
import 'package:flutter_calculator/src/app/generated/router/router.gr.dart';
import 'package:flutter_calculator/src/ui/global/custom_base_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends CustomBaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  Future handleStartup() async {
    // Do Some Logic Here
    // The timer is a placeholder, but the view needs to be viewed at least for a second!
    Timer(
      Duration(),
      () => navigateToHomeView(),
    );
  }

  Future navigateToHomeView() async {
    await _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }
}