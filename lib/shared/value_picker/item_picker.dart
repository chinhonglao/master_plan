import 'package:get/get.dart';
import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/core/utils/container_decoration.dart';
import 'package:master_plan/index.dart';

class ItemPicker extends StatelessWidget {
  final String initialValue;
  final Function(String) onItemSelected;
  ItemPicker({
    super.key,
    required this.initialValue,
    required this.onItemSelected,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DialogMethod().showBaseDialog(
          context,
          title: 'ជ្រើសរើសទំនិញ',
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(),
              Gap(16),
              SizedBox(
                height: 600,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.back();
                        onItemSelected('ទំនិញ ${index + 1}');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget('ទំនិញ ${index + 1}'),
                          if (initialValue == 'ទំនិញ ${index + 1}')
                            Icon(
                              Icons.check_box_rounded,
                              color: AppColor.blue2C45E8,
                            ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Gap(16),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        );
      },
      child: Container(
        decoration: ContainerDecoration.rounded(),
        padding: EdgeInsets.all(AppSize.Space_8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              initialValue,
              align: TextAlign.center,
            ),
            Icon(Icons.keyboard_arrow_down_rounded)
          ],
        ),
      ),
    );
  }
}
