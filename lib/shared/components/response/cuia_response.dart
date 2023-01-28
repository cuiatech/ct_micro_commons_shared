class CuiaResponse {
  CuiaResponse({required this.success, this.data, String? message}) {
    if (message != null) {
      this.message = message.replaceAll("Exception: ", "");
    }
  }

  final bool success;
  final dynamic data;
  String? message;
}
