class Failure {
  final String message;
  final String? code;
  final String? localizedMessageKey;

  Failure({required this.message, this.code, this.localizedMessageKey});

  @override
  String toString() {
    return 'Failure(message: $message, code: $code, localizedMessageKey: $localizedMessageKey)';
  }
}
