import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/index.dart';

Widget RoundedButton({
  required String text,
  Widget? leadingIcon,
  Widget? trailingIcon,
  Function? onPress,
  Color? borderColor,
  Color? fillColor,
  Color? textColor,
  double padding = AppSize.Space_8,
  double? height = AppSize.Height_54,
  bool isDisable = false,
  bool isDisableTextOnly = false,
  bool showLoadingOverlay = false,
  double borderRadius = 10,
  bool disableColorButCanTap = false,
}) {
  borderColor ??= Colors.transparent;
  fillColor ??= AppColor.greyE2E1E4;
  textColor ??= AppColor.black171719;

  return GestureDetector(
    onTap: () {
      if ((isDisableTextOnly || isDisable) & !disableColorButCanTap) {
        return;
      }
      if (onPress != null) {
        onPress();
      }
    },
    child: Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: height,
          padding: EdgeInsets.symmetric(vertical: padding),
          decoration: BoxDecoration(
            border: Border.all(
              color: isDisable ? Colors.transparent : borderColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
            color: fillColor == Colors.transparent
                ? fillColor
                : fillColor
                    .withOpacity(isDisable || disableColorButCanTap ? 0.3 : 1),
          ),
          child: showLoadingOverlay
              ? const SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leadingIcon != null) leadingIcon,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.Space_16,
                      ),
                      child: TextWidget(
                        text,
                        fontSize: 16,
                        color: textColor.withOpacity(
                          isDisableTextOnly
                              ? .3
                              : disableColorButCanTap
                                  ? .6
                                  : 1,
                        ),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (trailingIcon != null) trailingIcon,
                  ],
                ),
        ),
      ],
    ),
  );
}
