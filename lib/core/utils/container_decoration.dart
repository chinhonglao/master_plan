import 'package:master_plan/index.dart';

class ContainerDecoration {
  static BoxDecoration rounded({
    double borderRadius = 12,
    double borderWidth = 1,
    Color? borderColor,
    Color? fillColor,
  }) {
    borderColor ??= AppColor.grey313136;
    fillColor ??= Colors.white;
    return BoxDecoration(
      color: fillColor,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: borderColor,
        width: borderWidth,
      ),
    );
  }

  static BoxDecoration rowDataDecoration(int index) {
    return BoxDecoration(
      color: AppColor.dataRowColor(index),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[200]!,
          blurRadius: 2,
          offset: Offset(2, 2),
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.circular(10),
    );
  }
}
