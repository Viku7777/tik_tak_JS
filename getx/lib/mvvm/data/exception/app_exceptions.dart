class AppException implements Exception {
  final String? message;
  final String? prefix;

  AppException({this.message, this.prefix});

  String tostring() {
    return "$prefix,$message";
  }
}

class InternetException extends AppException {
  InternetException([String? message])
      : super(message: message, prefix: "No Internet Connection");
}

class RequestTimeout extends AppException {
  RequestTimeout([String? message])
      : super(message: message, prefix: "Request Time out");
}

class InvaildUrlException extends AppException {
  InvaildUrlException([String? message])
      : super(message: message, prefix: "Invalid Url");
}

class OtherException extends AppException {
  OtherException(String message)
      : super(message: message, prefix: "Request Time out");
}
