import 'package:flutter/material.dart';

/// The text widget used in the app.
///
/// This is a widget that contains the text widget used in the app.
/// It is used to handle the text widget used in the app.
///
///
class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    this.style,
    this.textAlign,
    this.textDirection,
    this.maxLines,
    this.overflow,
    this.textScaler,
    super.key,
  });

  final String? text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    if (true == text?.isNotEmpty) {
      return Text(
        text!,
        style: style,
        overflow: overflow ?? (maxLines == 1 ? TextOverflow.ellipsis : null),
        textAlign: textAlign,
        maxLines: maxLines,
        textScaler: textScaler ?? TextScaler.noScaling,
      );
    }
    return const SizedBox.shrink();
  }
}
