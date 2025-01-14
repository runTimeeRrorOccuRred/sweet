import 'package:flutter/material.dart';
import 'package:sweetlifesaver/routes/app_routes.dart';

mixin BaseScreenView {
  void showSnackbar(String message, {Color? color});
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params});
}
