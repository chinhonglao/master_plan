import 'package:master_plan/data/models/item_model.dart';
import 'package:master_plan/index.dart';

Widget ItemRowDataWidget(
  BuildContext context, {
  required int index,
}) {
  ItemResModel data = ItemResModel(
    id: '1',
    name: 'ទ្វាបន្ទប់ទឹក A001',
    cost: '20',
    price: '50',
    dimension: '1.4 x 2.0 x 0.2',
    unit: 'សន្លឹក',
  );
  return GestureDetector(
    onTap: () {
      // DialogMethod().showBaseDialog(
      //   context,
      //   title: 'ទំនិញ',
      //   child: Column(
      //     children: [
      //       ValuePairWidget(
      //         key: 'ឈ្មោះអតិថិជន',
      //         value: data.name,
      //         keyWidth: 150,
      //       ),
      //       ValuePairWidget(
      //         key: 'ឈ្មោះទំនាក់ទំនង',
      //         value: data.contactName,
      //         keyWidth: 150,
      //       ),
      //       ValuePairWidget(
      //         key: 'លេខទូរស័ព្ទ',
      //         value: data.contactNumber,
      //         keyWidth: 150,
      //       ),
      //       ValuePairWidget(
      //         key: 'គម្រោង',
      //         value: project,
      //         keyWidth: 150,
      //       ),
      //     ],
      //   ),
      // );
    },
    child: Container(
      color: AppColor.dataRowColor(index),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 60, child: TextWidget(index.toString())),
          Gap(8),
          Expanded(
            child: TextWidget(data.name),
          ),
          Expanded(
            child: TextWidget(data.dimension),
          ),
          Expanded(
            child: TextWidget(data.unit),
          ),
          Expanded(
            child: FormatCurrencyWidget(data.price),
          ),
          Expanded(
            child: FormatCurrencyWidget(data.cost),
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
