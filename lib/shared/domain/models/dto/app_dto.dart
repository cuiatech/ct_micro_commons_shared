class AppDto {
  late int id;
  late String title;
  late String description;
  late String url;
  late String version;
  late String imageUrl;
  late bool activated;
  String? createdAt;
  String? updatedAt;

  AppDto({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.version,
    required this.imageUrl,
    required this.activated,
    this.createdAt,
    this.updatedAt,
  });

  AppDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    version = json['version'];
    imageUrl = json['image_url'];
    activated = (json['activated'] ?? 0) == 1;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'url': url,
      'version': version,
      'image_url': imageUrl,
      'activated': activated,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
