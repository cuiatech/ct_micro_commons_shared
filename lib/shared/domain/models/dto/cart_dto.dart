import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

class CartDto {
  int? id;
  int? paymentDetailId;
  int? discountId;
  String? userEmail;
  double? total;
  String? status;
  String? createdAt;
  String? updatedAt;
  List<OrderItemDto>? orderItems;

  CartDto(
      {this.id,
      this.paymentDetailId,
      this.discountId,
      this.userEmail,
      this.total,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.orderItems});

  CartDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    paymentDetailId = json['payment_detail_id'];
    discountId = json['discount_id'];
    userEmail = json['user_email'];
    total = json['total'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['order_items'] != null) {
      orderItems = <OrderItemDto>[];
      json['order_items'].forEach((v) {
        orderItems!.add(OrderItemDto.fromJson(v));
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
      'order_items': orderItems?.map((v) => v.toJson()).toList(),
    };
  }
}
