import 'package:master_plan/index.dart';

Widget ValuePairWidget({
  required String key,
  required String value,
  double keyWidth = 200,
  double verticalPadding = 8,
  bool hasBottomDevider = true,
}) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: keyWidth,
              child: TextWidget(key),
            ),
            Expanded(
              child: TextWidget(value),
            ),
          ],
        ),
      ),
      if (hasBottomDevider)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            color: Colors.blueGrey[100],
          ),
        ),
    ],
  );
}
