import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_release_dto.dart';
import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_unit_dto.dart';

class AppDto {
  late int id;
  late String title;
  late String description;
  late String url;
  late String version;
  late String imageUrl;
  late String distributor;
  late bool activated;
  late DateTime createdAt;
  late DateTime updatedAt;
  late bool hasAccess;
  List<AppReleaseDto>? releases;
  List<AppUnitDto>? appUnit;

  AppDto({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.version,
    required this.imageUrl,
    required this.distributor,
    required this.activated,
    required this.createdAt,
    required this.updatedAt,
    required this.hasAccess,
    this.releases,
    this.appUnit,
  });

  AppDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    version = json['version'];
    imageUrl = json['image_url'];
    distributor = json['distributor'];
    activated = (json['activated'] ?? 0) == 1;
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    if (json['app_releases'] != null) {
      releases = <AppReleaseDto>[];
      json['app_releases'].forEach((v) {
        releases!.add(AppReleaseDto.fromJson(v));
      });
    }
    if (json['app_units'] != null) {
      appUnit = <AppUnitDto>[];
      json['app_units'].forEach((v) {
        appUnit!.add(AppUnitDto.fromJson(v));
      });
    }
    hasAccess = (json['has_access'] ?? 0) == 1;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'url': url,
      'version': version,
      'image_url': imageUrl,
      'distributor': distributor,
      'activated': activated,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'has_access': hasAccess,
      'app_releases': releases?.map((v) => v.toJson()).toList(),
      'app_units': appUnit?.map((v) => v.toJson()).toList(),
    };
  }
}
