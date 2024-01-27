class ExpenseResModel {
  final String id;

  final String expenseType;
  final String note;
  final String amount;
  final String business;
  final String project;
  ExpenseResModel({
    required this.id,
    required this.expenseType,
    required this.note,
    required this.amount,
    required this.business,
    required this.project,
  });
}
