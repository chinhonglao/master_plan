import 'package:get/get.dart';
import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/index.dart';

Widget BottomWrapper({
  required Widget child,
  bool isBoxShadow = false,
  bool isInnerBoxShadow = false,
  bool collapsed = false,
  Color? backgrounndColor,
  double topSpacing = AppSize.Space_16,
  bool haveTopBorder = true,
}) {
  backgrounndColor ??= Colors.white;
  return Builder(
    builder: (context) {
      final keyboardBottom = MediaQuery.of(context).viewInsets.bottom;
      final paddingBottom = MediaQuery.of(context).padding.bottom + 10;
      return DecoratedBox(
        decoration: BoxDecoration(
          color: backgrounndColor,
          boxShadow: isBoxShadow
              ? [
                  BoxShadow(
                    blurRadius: 3,
                    color: Get.isDarkMode
                        ? Colors.white.withOpacity(0.02)
                        : Colors.black.withOpacity(0.05),
                    offset: const Offset(0, -5),
                    spreadRadius: 1,
                  ),
                ]
              : isInnerBoxShadow
                  ? null
                  : null,
          border: Border(
            top: BorderSide(
              color: haveTopBorder ? AppColor.greyE2E1E4 : Colors.transparent,
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: topSpacing,
            bottom: keyboardBottom + paddingBottom,
            left: AppSize.Space_16,
            right: AppSize.Space_16,
          ),
          child: child,
        ),
      );
    },
  );
}
