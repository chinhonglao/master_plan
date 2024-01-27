import 'package:master_plan/index.dart';

Widget SaveButton({
  required VoidCallback onTap,
  String text = 'រក្សាទុក',
}) {
  return RoundedButton(
    text: text,
    fillColor: AppColor.blue2C45E8,
    textColor: Colors.white,
    onPress: onTap,
  );
}
