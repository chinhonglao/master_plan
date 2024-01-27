class MasterPlanResModel {
  final String id;
  final String business;
  final String customer;
  final String project;
  final List<Map<String, String>> houseType;
  final String expectedIncome;
  final String expectedExpand;
  final String income;
  final String expanded;

  MasterPlanResModel({
    required this.id,
    required this.customer,
    required this.project,
    required this.business,
    required this.houseType,
    required this.expectedIncome,
    required this.expectedExpand,
    required this.income,
    required this.expanded,
  });
}
