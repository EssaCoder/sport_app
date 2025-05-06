import 'package:flutter/material.dart';

/// The default text color widget used in the app.
///
/// This is a widget that contains the default text color widget used in the app.
/// It is used to handle the default text color widget used in the app.
///
///
class DefaultTextColor extends StatelessWidget {
  const DefaultTextColor({required this.child, required this.color, super.key});

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(context).style.copyWith(color: color),
      child: child,
    );
  }
}
