import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_constants.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppConstants.backgroundGradient,
            begin: AppConstants.gradientStartAlignment,
            end: AppConstants.gradientEndAlignment,
          ),
        ),
        child: SafeArea(child: child),
      ),
    );
  }
}
