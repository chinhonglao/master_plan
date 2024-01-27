import 'package:master_plan/index.dart';

import 'components/expense_type_row_data.dart';
import 'components/expense_type_table_header.dart';

class ExpenseTypePage extends StatelessWidget {
  const ExpenseTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_expand_type_setting,
      child: Column(
        children: [
          Row(
            children: [
              Gap(10),
              TextWidget('ស្វែងរក'),
              Gap(10),
              SizedBox(width: 400, child: CustomTextField()),
            ],
          ),
          Gap(10),
          ExpenseTypeTableHeader(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ExpenseTypeRowDataWidget(context, index: index + 1);
              },
              separatorBuilder: (context, index) => SizedBox.shrink(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
