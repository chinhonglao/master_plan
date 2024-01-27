class HouseTypeRequestModel {
  final String houseTypeId;
  String houseTypeName;
  final String qty;
  final List<ItemInHouseTypeReqModel> itemList;

  HouseTypeRequestModel({
    required this.houseTypeId,
    required this.houseTypeName,
    required this.qty,
    required this.itemList,
  });
}

class ItemInHouseTypeReqModel {
  final String itemId;
  final String itemName;
  final String qtyPerUnit;
  final String deductionQty;

  ItemInHouseTypeReqModel({
    required this.itemId,
    required this.itemName,
    required this.qtyPerUnit,
    required this.deductionQty,
  });
}
