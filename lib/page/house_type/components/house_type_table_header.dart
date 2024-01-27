import 'package:master_plan/index.dart';

Widget HouseTypeTableHeader() {
  return Container(
    color: Colors.blue.withOpacity(.5),
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 50, child: TextWidget('ល.រ')),
        Gap(8),
        Expanded(
          child: TextWidget('ប្រភេទផ្ទះ'),
        ),
        Expanded(
          child: TextWidget('ចំណាំ'),
        ),
        Expanded(
          child: TextWidget('សកម្មភាព', align: TextAlign.center),
        ),
      ],
    ),
  );
}
