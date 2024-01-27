import 'package:master_plan/index.dart';

class DateTimePicker extends StatefulWidget {
  final Function(String) onDateChange;
  const DateTimePicker({
    required this.onDateChange,
    super.key,
  });
  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  String dateValue = FormatHelper.formatDate(date: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          firstDate: DateTime.now().copyWith(year: 1990),
          lastDate: DateTime.now().copyWith(year: DateTime.now().year + 200),
        );
        if (selectedDate != null) {
          dateValue = FormatHelper.formatDate(date: selectedDate);
          setState(() {});
          widget.onDateChange(dateValue);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          // border: Border.all(
          //   color: Colors.black,
          // ),
          color: Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextWidget(dateValue),
      ),
    );
  }
}
