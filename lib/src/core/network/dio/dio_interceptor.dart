part of 'dio_client.dart';

/// The dio interceptor used in the app.
///
/// This is a class that contains the dio interceptor used in the app.
/// It is used to handle the dio interceptor used in the app.
///
///
class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var headerMessage = '';
    options.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    try {
      options.queryParameters.forEach((k, v) => debugPrint('► $k: $v'));
    } catch (_) {}
    try {
      const encoder = JsonEncoder.withIndent('  ');
      final prettyJson = encoder.convert(options.data);
      final queryParameters = encoder.convert(options.queryParameters);
    } catch (e, stackTrace) {}

    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    var headerMessage = '';
    response.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    const encoder = JsonEncoder.withIndent('  ');
    final prettyJson = encoder.convert(response.data);

    super.onResponse(response, handler);
  }
}
