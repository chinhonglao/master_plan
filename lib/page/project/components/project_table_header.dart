import 'package:master_plan/index.dart';

Widget ProjectTableHeader() {
  return Container(
    color: Colors.blue.withOpacity(.5),
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 50, child: TextWidget('ល.រ')),
        Gap(8),
        Expanded(
          child: TextWidget('ឈ្មោះគម្រោង'),
        ),
        Expanded(
          child: TextWidget('អតិថិជន'),
        ),
        Expanded(
          child: TextWidget('ស្ថានភាព'),
        ),
        Expanded(
          child: TextWidget('សកម្មភាព'),
        ),
      ],
    ),
  );
}
