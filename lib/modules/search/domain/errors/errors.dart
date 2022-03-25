abstract class Error implements Exception {
  String get message;
}

class ErrorText implements Error {
  @override
  String message;

  ErrorText(this.message);
}

class ErrorRequiredText implements Error {
  @override
  String message;

  ErrorRequiredText(this.message);
}
