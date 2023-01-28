class CuiaResponse {
  CuiaResponse({required this.success, this.data, this.message});

  final bool success;
  final dynamic data;
  final String? message;
}
