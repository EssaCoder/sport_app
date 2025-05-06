part of 'images_widget.dart';

/// The image network widget used in the app.
///
/// This is a widget that contains the image network widget used in the app.
/// It is used to handle the image network widget used in the app.
///
///
class ImageNetworkWidget extends StatelessWidget {
  const ImageNetworkWidget(
    this.url, {
    super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.color,
    this.border,
    this.withShimmer,
    this.onTap,
    this.fit = BoxFit.contain,
  });

  final String? url;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? fit;
  final Color? color;
  final BoxBorder? border;
  final bool? withShimmer;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child:
            url == null
                ? Padding(
                  padding: EdgeInsets.all(context.insets.spacingXs),
                  child: ImageSvgAsset(
                    Assets.icons.placeholderImage.path,
                    color: context.colors.fieldTextPlaceholder,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.scaleDown,
                  ),
                )
                : CachedNetworkImage(
                  imageUrl: url!,
                  fit: fit,
                  height: height,
                  width: width,
                  errorWidget:
                      (context, url, error) => Padding(
                        padding: EdgeInsets.all(context.insets.spacingMd),
                        child: Center(
                          child: ImageSvgAsset(
                            Assets.icons.placeholder.path,
                            color: context.colors.fieldTextPlaceholder,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                  placeholder:
                      (context, url) => ShimmerContainerWidget(
                        borderRadius: borderRadius,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                ),
      ),
    );
  }
}
