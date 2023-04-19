class AppUnitDto {
  int? id;
  int? appId;
  String? description;
  String? price;
  String? newRule;
  String? createdAt;
  String? updatedAt;

  AppUnitDto({
    this.id,
    this.appId,
    this.description,
    this.price,
    this.newRule,
    this.createdAt,
    this.updatedAt,
  });

  AppUnitDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appId = json['app_id'];
    description = json['description'];
    price = json['price'];
    newRule = json['new_rule'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'app_id': appId,
      'description': description,
      'price': price,
      'new_rule': newRule,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
