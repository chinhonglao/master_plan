import 'package:master_plan/data/models/measure_unit_res_model.dart';
import 'package:master_plan/index.dart';

Widget MeasureUnitRowDataWidget(
  BuildContext context, {
  required int index,
}) {
  final data = MeasureUnitResModel(id: '1', unitname: 'សន្លឹក', note: '');
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
            child: TextWidget(data.unitname),
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
