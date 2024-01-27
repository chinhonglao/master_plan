import 'package:master_plan/index.dart';
import 'package:master_plan/page/measure_unit/components/measure_unit_row_data.dart';
import 'package:master_plan/page/measure_unit/components/measure_unit_table_header.dart';

class MeasureUnitPage extends StatelessWidget {
  const MeasureUnitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_unit_measure_setting,
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
          MeasureUnitTableHeader(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return MeasureUnitRowDataWidget(context, index: index + 1);
              },
              separatorBuilder: (context, index) => SizedBox.shrink(),
              itemCount: 8,
            ),
          ),
        ],
      ),
    );
  }
}
