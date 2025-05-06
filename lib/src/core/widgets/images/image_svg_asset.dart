part of 'images_widget.dart';

/// The image svg asset widget used in the app.
///
/// This is a widget that contains the image svg asset widget used in the app.
/// It is used to handle the image svg asset widget used in the app.
///
///
class ImageSvgAsset extends StatelessWidget {
  const ImageSvgAsset(
    this.assetName, {
    this.height,
    this.width,
    this.color,
    this.backgroundColor,
    this.borderRadius,
    this.fit,
    this.border,
    this.alignment,
    super.key,
  });

  final String assetName;
  final double? height;
  final double? width;
  final Color? color;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? fit;
  final BoxBorder? border;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Skeleton.shade(
          child: SvgPicture.asset(
            assetName,
            height: height,
            width: width,
            alignment: alignment ?? Alignment.center,
            colorFilter:
                color == null
                    ? null
                    : ColorFilter.mode(color!, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
