class AddItemReqModel {
  final String id;

  final String name;
  final String dimension;
  final String price;
  final String cost;
  List<String> unitMeasureList;
  AddItemReqModel({
    this.id = '',
    this.name = '',
    this.dimension = '',
    this.price = '',
    this.cost = '',
    this.unitMeasureList = const [],
  });

  AddItemReqModel copyWith({
    String? id,
    String? name,
    String? dimension,
    String? price,
    String? cost,
  }) {
    return AddItemReqModel(
      id: id ?? this.id,
      name: name ?? this.name,
      dimension: dimension ?? this.dimension,
      price: price ?? this.price,
      cost: cost ?? this.cost,
    );
  }
}
