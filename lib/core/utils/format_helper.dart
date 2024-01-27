import 'package:master_plan/index.dart';

class FormatHelper {
  String formatCurrency(String value) {
    try {
      final currencyFormat = NumberFormat.decimalPattern();
      final double convertedValue = double.parse(value);
      final String formatedValue = currencyFormat.format(convertedValue);
      return '${formatedValue}\$';
    } catch (e) {
      return 'N/A';
    }
  }

  static String formatDate({String? dateString, DateTime? date}) {
    assert(!(dateString == null && date == null));
    final dateFormat = DateFormat('dd-MMMM-yyyy');
    String convertedDate = '';
    if (date == null) {
      convertedDate = dateFormat.format(DateTime.parse(dateString!));
    } else {
      convertedDate = dateFormat.format(date);
    }
    return convertedDate;
  }
}
