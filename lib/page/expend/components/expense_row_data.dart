import 'package:master_plan/data/models/expense_res_model.dart';
import 'package:master_plan/index.dart';

Widget ExpenseRowDataWidget(
  BuildContext context, {
  required int index,
}) {
  ExpenseResModel data = ExpenseResModel(
    id: '1',
    expenseType: 'ចំណាយថ្លៃពលកម្ម',
    amount: '200',
    business: 'ដែក',
    project: 'វិមានភ្នំពេញ គម្រោង ១២',
    note: 'ថ្លៃជាងផ្គុំ បាញ់ថ្នាំ និងតម្លើង',
  );
  return GestureDetector(
    onTap: () {},
    child: Container(
      color: AppColor.dataRowColor(index),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 60, child: TextWidget(index.toString())),
          Gap(8),
          Expanded(
            child: TextWidget(data.expenseType),
          ),
          Expanded(
            child: TextWidget(data.note),
          ),
          Expanded(
            child: TextWidget(data.business),
          ),
          Expanded(
            child: TextWidget(data.project),
          ),
          Expanded(
            child: FormatCurrencyWidget(data.amount),
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
