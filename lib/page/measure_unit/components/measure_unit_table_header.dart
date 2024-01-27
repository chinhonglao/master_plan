import 'package:master_plan/index.dart';

Widget MeasureUnitTableHeader() {
  return Container(
    color: Colors.blue.withOpacity(.5),
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 50, child: TextWidget('ល.រ')),
        Gap(8),
        Expanded(
          child: TextWidget('ខ្នាត'),
        ),
        Expanded(
          child: TextWidget('សកម្មភាព', align: TextAlign.center),
        ),
      ],
    ),
  );
}
