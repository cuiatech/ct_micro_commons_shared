import 'package:ct_micro_commons_shared/shared/domain/models/dto/order_item_dto.dart';

class OrderDto {
  int? id;
  int? paymentDetailId;
  int? discountId;
  String? userEmail;
  double? total;
  String? status;
  String? createdAt;
  String? updatedAt;
  List<OrderItem>? orderItems;

  OrderDto(
      {this.id,
      this.paymentDetailId,
      this.discountId,
      this.userEmail,
      this.total,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.orderItems});

  OrderDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    paymentDetailId = json['payment_detail_id'];
    discountId = json['discount_id'];
    userEmail = json['user_email'];
    total = json['total'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['order_items'] != null) {
      orderItems = <OrderItem>[];
      json['order_items'].forEach((v) {
        orderItems!.add(OrderItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'payment_detail_id': paymentDetailId,
      'discount_id': discountId,
      'user_email': userEmail,
      'total': total,
      'status': status,
      'created_at': createdAt,
      'updated_at': updatedAt,
      if (orderItems != null)
        'order_items': orderItems!.map((v) => v.toJson()).toList(),
    };
  }
}
