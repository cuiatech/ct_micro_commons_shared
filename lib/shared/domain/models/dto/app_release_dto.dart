class AppReleaseDto {
  late int id;
  late int appId;
  late String version;
  late String details;
  late String createdAt;
  String? updatedAt;

  AppReleaseDto({
    required this.id,
    required this.appId,
    required this.version,
    required this.details,
    required this.createdAt,
    this.updatedAt,
  });

  AppReleaseDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appId = json['app_id'];
    version = json['version'];
    details = json['details'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'app_id': appId,
      'version': version,
      'details': details,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
