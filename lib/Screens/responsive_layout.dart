import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilescreen;
  final Widget webscreen;
  const ResponsiveLayout({
    super.key,
    required this.mobilescreen,
    required this.webscreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 950) {
          return webscreen;
        }
        return mobilescreen;
      },
    );
  }
}
