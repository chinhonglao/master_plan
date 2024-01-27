import 'package:master_plan/index.dart';

Widget FilterWidget({
  required Function(String) onDateChange,
}) {
  return Container(
    child: Row(
      children: [
        TextWidget('កាលបរិច្ឆេទ'),
        Gap(20),
        DateTimePicker(
          onDateChange: onDateChange,
        ),
        Gap(20),
        TextWidget('ដល់'),
        Gap(20),
        DateTimePicker(
          onDateChange: onDateChange,
        ),
      ],
    ),
  );
}
