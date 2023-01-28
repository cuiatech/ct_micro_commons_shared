class Env {
  static EnvParams dev() => EnvParams(
        baseUrl: 'http://localhost/cuiatech_api',
        clientId: '984ffd9e-31a5-4da2-bffa-b625ad76836b',
        clientSecret: 'W0nprTh1B41mRXyxRIormKJ9cwALwQiAoSu7wV58',
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
