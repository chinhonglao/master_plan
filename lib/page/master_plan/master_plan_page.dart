import 'package:get/get.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/page/add_master_plan_page/add_master_plan_page.dart';
import 'package:master_plan/page/master_plan/components/table_header.dart';

import 'components/fiter_widget.dart';
import 'components/master_plan_row_data.dart';

class MasterPlanPage extends StatelessWidget {
  const MasterPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_master_plan,
      actions: [
        ElevatedButton.icon(
          onPressed: () {
            Get.toNamed(AddMasterPlanPage.routeName);
            // DialogMethod().showBaseDialog(
            //   context,
            //   formWidth: 800,
            //   barrierDismissible: false,
            //   title: 'បង្កើតគម្រោងមេ',
            //   child: AddMasterPlanDialogForm(),
            // );
          },
          icon: Icon(Icons.add_rounded),
          label: TextWidget('បង្កើតគម្រោងមេ'),
        ),
      ],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            FilterWidget(onDateChange: (date) {
              print(date);
            }),
            Gap(16),
            TableHeader(),
            Gap(20),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return MasterPlanRowDataWidget(index: index + 1);
                },
                separatorBuilder: (context, index) => Gap(20),
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
