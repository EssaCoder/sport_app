/// The failure class used in the app.
///
/// This is a class that contains the failure class used in the app.
/// It is used to handle the failure class used in the app.
///
///
class Failure implements Exception {
  Failure(this.code, this.message);

  int code;
  String message;
}
