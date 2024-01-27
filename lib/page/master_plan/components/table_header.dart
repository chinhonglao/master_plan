import 'package:master_plan/index.dart';

Widget TableHeader() {
  return Container(
    color: Colors.blue.withOpacity(.5),
    padding: const EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget('ល.រ'),
        Gap(8),
        Expanded(
          child: TextWidget('អាជីវកម្ម'),
        ),
        Expanded(
          child: TextWidget('អតិថិជន'),
        ),
        Expanded(
          child: TextWidget('គម្រោង'),
        ),
        Expanded(
          flex: 2,
          child: TextWidget('ប្រភេទផ្ទះ'),
        ),
        Expanded(
          child: TextWidget('មេការ'),
        ),
        Expanded(
          child: TextWidget('ចំណូលរំពឹងទុក'),
        ),
        Expanded(
          child: TextWidget('ចំណូលជាក់ស្តែង'),
        ),
        Expanded(
          child: TextWidget('ចំណាយរំពឹងទុក'),
        ),
        Expanded(
          child: TextWidget('ចំណាយជាក់ស្តែង'),
        ),
        Expanded(
          child: TextWidget('សកម្មភាព'),
        ),
      ],
    ),
  );
}
