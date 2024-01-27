import 'package:master_plan/index.dart';
import 'package:master_plan/shared/form/base_form_for_dialog.dart';

class DialogMethod {
  void showBaseDialog(
    BuildContext context, {
    required String title,
    required Widget child,
    double formWidth = 400,
    VoidCallback? onDialogClose,
    bool barrierDismissible = true,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return BaseDialogForm(
          title: title,
          child: child,
          barrierDismissible: barrierDismissible,
          formWidth: formWidth,
          onDialogClose: onDialogClose,
        );
      },
    );
  }
}
