import 'package:get/get.dart';
import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/index.dart';

class BaseDialogForm extends StatefulWidget {
  final String title;
  final Widget child;
  final VoidCallback? onDialogClose;
  final double formWidth;
  final bool barrierDismissible;
  const BaseDialogForm({
    required this.title,
    required this.child,
    required this.formWidth,
    this.onDialogClose,
    required this.barrierDismissible,
    super.key,
  });

  @override
  State<BaseDialogForm> createState() => _BaseDialogFormState();
}

class _BaseDialogFormState extends State<BaseDialogForm> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.barrierDismissible ? Get.back : null,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: widget.formWidth,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: AppSize.Space_16,
                          horizontal: AppSize.Space_24,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.greyE2E1E4,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Gap(40),
                            TextWidget(
                              widget.title,
                              fontSize: AppSize.Size_20,
                              color: AppColor.blue2C45E8,
                            ),
                            IconButton(
                              onPressed: Get.back,
                              icon: Icon(Icons.close),
                            ),
                          ],
                        ),
                      ),
                      Gap(AppSize.Space_16),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: AppSize.Space_24),
                        child: widget.child,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.onDialogClose?.call();
    super.dispose();
  }
}
