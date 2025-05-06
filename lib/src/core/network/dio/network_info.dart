part of 'dio_client.dart';

/// The network info class used in the app.
///
/// This is a class that contains the network info class used in the app.
/// It is used to handle the network info class used in the app.
///
/// 
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl();

  Future<bool> checkInternetConnection() async {
    try {
      final result = await HttpClient()
          .getUrl(Uri.parse('https://google.com'))
          .timeout(const Duration(seconds: 5));
      final response = await result.close();

      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> get isConnected => checkInternetConnection();
}
