import 'package:master_plan/index.dart';

import '../../../data/models/expense_type_res_model.dart';

Widget ExpenseTypeRowDataWidget(
  BuildContext context, {
  required int index,
}) {
  final data = index.isOdd
      ? ExpenseTypeResModel(id: '1', expenseType: 'ចំណាយថ្លៃពលកម្ម', note: '')
      : ExpenseTypeResModel(
          id: '2', expenseType: 'ចំណាយវត្ថុធាតុដើម', note: '');
  return GestureDetector(
    onTap: () {},
    child: Container(
      color: AppColor.dataRowColor(index),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 50, child: TextWidget(index.toString())),
          Gap(8),
          Expanded(
            child: TextWidget(data.expenseType),
          ),
          Expanded(
            child: IntrinsicWidth(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: TextWidget('កែប្រែ'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
