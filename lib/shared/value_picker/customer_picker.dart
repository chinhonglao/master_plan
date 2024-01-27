import 'package:get/get.dart';
import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/core/utils/container_decoration.dart';
import 'package:master_plan/index.dart';

class CustomerPicker extends StatelessWidget {
  final String initialValue;
  final Function(String) onSelectedCustomer;
  CustomerPicker({
    super.key,
    required this.initialValue,
    required this.onSelectedCustomer,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DialogMethod().showBaseDialog(
          context,
          title: 'ជ្រើសរើសអតិថិជន',
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
                        onSelectedCustomer('វិមានភ្នំពេញ ${index + 1}');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget('វិមានភ្នំពេញ ${index + 1}'),
                          if (initialValue == 'វិមានភ្នំពេញ ${index + 1}')
                            Icon(
                              Icons.check_box_rounded,
                              color: AppColor.blue2C45E8,
                            ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Gap(16),
                  itemCount: 20,
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
