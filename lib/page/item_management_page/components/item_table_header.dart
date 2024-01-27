import 'package:master_plan/index.dart';

Widget ItemTableHeader() {
  return Container(
    color: Colors.blue.withOpacity(.5),
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 60, child: TextWidget('ល.រ')),
        Gap(8),
        Expanded(
          child: TextWidget('ឈ្មោះទំនិញ'),
        ),
        Expanded(
          child: TextWidget('ទំហំ'),
        ),
        Expanded(
          child: TextWidget('ខ្នាត'),
        ),
        Expanded(
          child: TextWidget('តម្លៃលក់ចេញ'),
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
