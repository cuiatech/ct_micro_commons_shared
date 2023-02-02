class Env {
  static EnvParams dev() => EnvParams(
        baseUrl: 'http://localhost/cuiatech_api',
        clientId: '985bb51e-0869-4d79-8865-ae1ca6f9aa81',
        clientSecret: 'qJrwUdDm2GwJVFc15pR5nLEZzXuVCU6kvyl9jNiV',
      );

  static EnvParams prod() => EnvParams(
        baseUrl: 'https://cuiatech.com/server',
        clientId: '985050c9-a833-4c55-97b3-eb0752be20e9',
        clientSecret: 'jIQpIG1E5XXOZb7oiePlGIF71mL7MAzLpjxP8ndo',
      );
}

class EnvParams {
  EnvParams({
    required this.baseUrl,
    required this.clientId,
    required this.clientSecret,
  });

  final String baseUrl;
  final String clientId;
  final String clientSecret;
}
