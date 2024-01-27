import 'package:master_plan/index.dart';

Widget CustomerTableHeader() {
  return Container(
    color: Colors.blue.withOpacity(.5),
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 50, child: TextWidget('ល.រ')),
        Gap(8),
        Expanded(
          child: TextWidget('ឈ្មោះអតិថិជន'),
        ),
        Expanded(
          child: TextWidget('ឈ្មោះទំនាក់ទំនង'),
        ),
        Expanded(
          child: TextWidget('លេខទំនាក់ទំនង'),
        ),
        Expanded(
          child: TextWidget('ចំនួនគម្រោង'),
        ),
        Expanded(
          child: TextWidget('សកម្មភាព'),
        ),
      ],
    ),
  );
}
