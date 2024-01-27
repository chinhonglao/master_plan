import 'package:master_plan/index.dart';

Widget FormatCurrencyWidget(String value) {
  try {
    final currencyFormat = NumberFormat.decimalPattern();
    final double convertedValue = double.parse(value);
    final String formatedValue = currencyFormat.format(convertedValue);
    return TextWidget('$formatedValue \$');
  } catch (e) {
    print(e);
    return TextWidget('N/A');
  }
}
