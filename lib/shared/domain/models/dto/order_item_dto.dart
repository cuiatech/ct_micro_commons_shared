import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';
import 'package:ct_micro_commons_shared/shared/domain/models/dto/app_unit_dto.dart';

class OrderItemDto {
  int? id;
  int? orderId;
  int? appId;
  AppDto? app;
  String? name;
  int? discountId;
  int? quantity;
  double? price;
  String? createdAt;
  String? updatedAt;
  AppUnitDto? appUnitDto;

  OrderItemDto({
    this.id,
    this.orderId,
    this.appId,
    this.app,
    this.name,
    this.discountId,
    this.quantity,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.appUnitDto,
  });

  OrderItemDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    appId = json['app_id'];
    app = json['app'] != null ? AppDto.fromJson(json['app']) : null;
    name = json['name'];
    discountId = json['discount_id'];
    quantity = json['quantity'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    appUnitDto =
        json['app_unit'] != null ? AppUnitDto.fromJson(json['app_unit']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order_id': orderId,
      'app_id': appId,
      'app': app?.toJson(),
      'name': name,
      'discount_id': discountId,
      'quantity': quantity,
      'price': price,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'app_unit': appUnitDto?.toJson(),
    };
  }
}
