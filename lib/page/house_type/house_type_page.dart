import 'package:master_plan/index.dart';
import 'package:master_plan/page/house_type/components/house_type_row_data.dart';
import 'package:master_plan/page/house_type/components/house_type_table_header.dart';

class HouseTypePage extends StatelessWidget {
  const HouseTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_house_type_setting,
      child: Column(
        children: [
          Row(
            children: [
              Gap(10),
              TextWidget('ស្វែងរក'),
              Gap(10),
              SizedBox(width: 400, child: CustomTextField()),
            ],
          ),
          Gap(10),
          HouseTypeTableHeader(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return HouseTypeRowDataWidget(context, index: index + 1);
              },
              separatorBuilder: (context, index) => SizedBox.shrink(),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
