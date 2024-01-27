import 'package:master_plan/core/utils/container_decoration.dart';
import 'package:master_plan/index.dart';

Widget MasterPlanRowDataWidget({
  required int index,
}) {
  MasterPlanResModel data = MasterPlanResModel(
    id: '001',
    business: 'ដែក',
    customer: 'វិមានភ្នំពេញ',
    project: 'វិមានភ្នំពេញគម្រោង ១២',
    houseType: [
      {
        'houseType': 'វីឡាឃ្វីន A',
        'qty': '900',
      },
      {
        'houseType': 'វីឡាទោល',
        'qty': '2000',
      },
      {
        'houseType': 'ផ្ទះល្វែង E0',
        'qty': '5000',
      },
      {
        'houseType': 'វីឡាកូនកាត់',
        'qty': '3000',
      }
    ],
    expectedIncome: '10000000',
    expectedExpand: '3000000',
    income: '6000000',
    expanded: '1000000',
  );
  return Container(
    margin: EdgeInsets.all(3),
    decoration: ContainerDecoration.rowDataDecoration(index),
    padding: EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(index.toString()),
        Gap(8),
        Expanded(
          flex: 1,
          child: TextWidget(data.business),
        ),
        Expanded(
          flex: 1,
          child: TextWidget(data.customer),
        ),
        Expanded(
          flex: 1,
          child: TextWidget(data.project),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                data.houseType.length,
                (index) => TextWidget(
                  '${data.houseType[index]['houseType']} : ${data.houseType[index]['qty']}',
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: TextWidget('សុក សៅ\nសុខ វាសនា'),
        ),
        Expanded(
          flex: 1,
          child: FormatCurrencyWidget(data.expectedIncome),
        ),
        Expanded(
          flex: 1,
          child: FormatCurrencyWidget(data.income),
        ),
        Expanded(
          flex: 1,
          child: FormatCurrencyWidget(data.expectedExpand),
        ),
        Expanded(
          flex: 1,
          child: FormatCurrencyWidget(data.expanded),
        ),
        Expanded(
          child: IntrinsicWidth(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: TextWidget('កែប្រែ'),
                ),
                Gap(8),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: TextWidget('ដាក់ជាមោឃៈ'),
                // ),
                // Gap(8),
                ElevatedButton(
                  onPressed: () {},
                  child: TextWidget('របាយការណ៍លម្អិត'),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
