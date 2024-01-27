import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/index.dart';

Widget CustomTextField({
  TextEditingController? controller,
  String? initialValue,
  TextInputType? inputType,
  Color? borderColor,
  Color? fillColor,
  Color textColor = AppColor.black171719,
  double textFontSize = 16,
  FontWeight textFontWeight = FontWeight.normal,
  double borderRadius = 10,
  String hintText = '',
  Color? hintColor = AppColor.grey313136,
  Function(String)? onValueChange,
  Function()? onTap,
  Widget? suffixIcon,
  bool isReadOnly = false,
  int maxLine = 1,
  int minLine = 1,
  TextAlignVertical verticalAlignment = TextAlignVertical.top,
  FocusNode? focusNode,
  bool autofocus = false,
  double verticalContendPadding = 0,
  int? maxLength,
}) {
  borderColor ??= AppColor.grey313136;
  fillColor ??= Colors.white;
  final borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(
      color: borderColor,
    ),
  );
  return SizedBox(
    child: TextFormField(
      autofocus: autofocus,
      focusNode: focusNode,
      controller: controller,
      readOnly: isReadOnly,
      initialValue: initialValue,
      scrollPhysics: const NeverScrollableScrollPhysics(),
      onChanged: (value) {
        if (onValueChange != null) onValueChange(value);
      },
      textAlignVertical: verticalAlignment,
      onTap: onTap,
      cursorColor: Colors.black,
      maxLines: maxLine,
      minLines: minLine,
      maxLength: maxLength,
      decoration: InputDecoration(
        counterText: '',
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSize.Space_16,
          vertical: verticalContendPadding,
        ),
        enabledBorder: borderStyle,
        focusedBorder: borderStyle,
        fillColor: fillColor,
        hintText: hintText,
        filled: true,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(color: hintColor),
      ),
      keyboardType: inputType,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: textFontSize,
        fontWeight: textFontWeight,
        color: textColor,
      ),
    ),
  );
}
