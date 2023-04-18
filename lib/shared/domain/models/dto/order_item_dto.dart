class OrderItemDto {
  int? id;
  int? orderId;
  int? appId;
  String? name;
  int? discountId;
  int? quantity;
  double? amount;
  String? createdAt;
  String? updatedAt;

  OrderItemDto(
      {this.id,
      this.orderId,
      this.appId,
      this.name,
      this.discountId,
      this.quantity,
      this.amount,
      this.createdAt,
      this.updatedAt});

  OrderItemDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    appId = json['app_id'];
    name = json['name'];
    discountId = json['discount_id'];
    quantity = json['quantity'];
    amount = json['amount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order_id': orderId,
      'app_id': appId,
      'name': name,
      'discount_id': discountId,
      'quantity': quantity,
      'amount': amount,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
