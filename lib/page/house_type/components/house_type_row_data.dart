import 'package:master_plan/data/models/house_type_model.dart';
import 'package:master_plan/index.dart';

Widget HouseTypeRowDataWidget(
  BuildContext context, {
  required int index,
}) {
  final data = HouseTypeModel(id: '1', houseTypeName: 'វីឡាឃ្វីន A', note: '');
  return GestureDetector(
    onTap: () {},
    child: Container(
      color: AppColor.dataRowColor(index),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 50, child: TextWidget(index.toString())),
          Gap(8),
          Expanded(
            child: TextWidget(data.houseTypeName),
          ),
          Expanded(
            child: TextWidget(data.note),
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
