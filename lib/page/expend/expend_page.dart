import 'package:master_plan/index.dart';

import 'components/expense_row_data.dart';
import 'components/expense_table_header.dart';

class ExpendPage extends StatelessWidget {
  const ExpendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_expend,
      child: Column(
        children: [
          ExpenseTableHeader(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ExpenseRowDataWidget(context, index: index + 1);
              },
              separatorBuilder: (context, index) => SizedBox.shrink(),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
