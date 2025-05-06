import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/src/core/extensions/extensions.dart';
import 'package:sport_app/src/core/widgets/text/text_widget.dart';

/// The text field widget used in the app.
///
/// This is a widget that contains the text field widget used in the app.
/// It is used to handle the text field widget used in the app.
///
///
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.controller,
    this.validator,
    this.keyboardType,
    this.labelText,
    this.initialValue,
    this.inputFormatters,
    this.obscureText = false,
    this.readOnly = false,
    this.onChanged,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
    this.border,
    this.textInputAction,
    this.contentPadding,
    this.autofocus = false,
    this.icon,
    this.constraints,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines,
    this.onTap,
    this.focusNode,
    this.prefixIconConstraints,
    this.isOptional,
    this.suffixIconConstraints,
    this.style,
    this.color,
    this.borderRadius,
    this.hintText,
    this.textDirection,
  });

  final TextEditingController? controller;
  final Color? color;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? initialValue;
  final InputBorder? border;
  final bool obscureText;
  final bool autofocus;
  final bool readOnly;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextDirection? textDirection;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxLines;
  final GestureTapCallback? onTap;
  final TextAlign? textAlign;
  final ValueChanged<String>? onChanged;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;
  final FocusNode? focusNode;
  final TextStyle? style;
  final String? icon;
  final bool? isOptional;
  final BorderRadius? borderRadius;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      validator: validator,
      initialValue: controller?.text ?? initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (field) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              textAlignVertical: TextAlignVertical.top,
              autofocus: autofocus,
              initialValue: initialValue,
              controller: controller,
              onChanged: (value) {
                field.didChange(value);
                onChanged?.call(value);
              },
              focusNode: focusNode,
              onTap: onTap,
              textDirection: textDirection,
              textInputAction: textInputAction,
              maxLength: maxLength,
              maxLines: maxLines ?? 1,
              textAlign: textAlign ?? TextAlign.end,
              readOnly: readOnly,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              obscureText: obscureText,
              textCapitalization: textCapitalization,
              style:
                  style ??
                  context.textStyles.labelMedium.copyWith(
                    color: context.colors.backgroundBlack,
                  ),
              decoration: InputDecoration(
                filled: true,
                fillColor: context.colors.fieldBackgroundDefault,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                contentPadding: contentPadding,
                constraints: constraints,
                labelText: labelText,
                hintText: hintText,
                hintStyle: context.textStyles.labelMedium.copyWith(
                  color: context.colors.fieldTextPlaceholder,
                ),
                prefixIconConstraints: prefixIconConstraints,
                suffixIconConstraints: suffixIconConstraints,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(context.corners.rb),
                  borderSide: BorderSide(
                    width: 1.h,
                    color: context.colors.fieldBorderDefault,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(context.corners.rb),
                  borderSide: BorderSide(
                    width: 1.h,
                    color: context.colors.fieldBorderDefault,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(context.corners.rb),
                  borderSide: BorderSide(
                    width: 1.h,
                    color: context.colors.fieldBorderDefault,
                  ),
                ),
              ),
            ),
            if (field.hasError) ...[
              SizedBox(height: context.insets.spacingMd),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: TextWidget(
                  field.errorText,
                  style: context.textStyles.titleMedium.copyWith(
                    color: context.colors.backgroundBlack,
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
