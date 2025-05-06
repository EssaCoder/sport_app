part of 'extensions.dart';

/// The extension on the [Iterable] class.
///
/// This extension is used to get the first element that matches the test.
/// It is used to get the first element that matches the test.
///
/// 
extension IterableExtension<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}
