import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_release_dto.dart';

class AppDto {
  late int id;
  late String title;
  late String description;
  late String url;
  late double amount;
  late String version;
  late String imageUrl;
  late String distributor;
  late bool activated;
  String? createdAt;
  String? updatedAt;

  List<AppReleaseDto>? releases;

  AppDto({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.amount,
    required this.version,
    required this.imageUrl,
    required this.distributor,
    required this.activated,
    this.createdAt,
    this.updatedAt,
    this.releases,
  });

  AppDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    amount = json['amount'];
    version = json['version'];
    imageUrl = json['image_url'];
    distributor = json['distributor'];
    activated = (json['activated'] ?? 0) == 1;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['app_releases'] != null) {
      releases = <AppReleaseDto>[];
      json['app_releases'].forEach((v) {
        releases!.add(AppReleaseDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'url': url,
      'amount': amount,
      'version': version,
      'image_url': imageUrl,
      'distributor': distributor,
      'activated': activated,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'app_releases': releases?.map((v) => v.toJson()).toList(),
    };
  }
}
