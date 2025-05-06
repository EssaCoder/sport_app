
import 'package:flutter/cupertino.dart';

/// The text rich widget used in the app.
///
/// This is a widget that contains the text rich widget used in the app.
/// It is used to handle the text rich widget used in the app.
///
/// 
class TextRichWidget extends StatelessWidget {
  const TextRichWidget({
    this.children,
    this.textAlign,
    this.textScaler,
    this.maxLines,
    this.style,
    super.key,
  });

  final List<InlineSpan>? children;
  final TextAlign? textAlign;
  final TextScaler? textScaler;
  final int? maxLines;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: children),
      textAlign: textAlign,
      maxLines: maxLines,
      style: style,
      textScaler: textScaler ?? TextScaler.noScaling,
    );
  }
}
