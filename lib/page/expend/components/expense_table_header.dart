import 'package:master_plan/index.dart';

Widget ExpenseTableHeader() {
  return Container(
    color: Colors.blue.withOpacity(.5),
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 60, child: TextWidget('ល.រ')),
        Gap(8),
        Expanded(
          child: TextWidget('ប្រភេទចំណាយ'),
        ),
        Expanded(
          child: TextWidget('បរិយាយ'),
        ),
        Expanded(
          child: TextWidget('អាជីវកម្ម'),
        ),
        Expanded(
          child: TextWidget('គម្រោង'),
        ),
        Expanded(
          child: TextWidget('ចំណាយ'),
        ),
        Expanded(
          child: TextWidget('សកម្មភាព'),
        ),
      ],
    ),
  );
}
