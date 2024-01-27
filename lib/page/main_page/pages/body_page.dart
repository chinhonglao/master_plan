import 'package:master_plan/index.dart';
import 'package:master_plan/page/business/business_page.dart';
import 'package:master_plan/page/customers/customer_page.dart';
import 'package:master_plan/page/expend/expend_page.dart';
import 'package:master_plan/page/expense_type/expense_type_page.dart';
import 'package:master_plan/page/house_type/house_type_page.dart';
import 'package:master_plan/page/item_management_page/item_management_page.dart';
import 'package:master_plan/page/measure_unit/measure_unit_page.dart';
import 'package:master_plan/page/project/project_page.dart';
import 'package:master_plan/page/reports/report_page.dart';
import 'package:master_plan/page/setting/setting_page.dart';

class BodyPage extends StatefulWidget {
  final String menu;
  const BodyPage({Key? key, required this.menu}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (widget.menu) {
      case menu_master_plan:
        return const MasterPlanPage();
      case menu_item:
        return const ItemManagementPage();
      case menu_customer_and_project:
      case menu_customer:
        return const CustomerPage();

      case menu_project:
        return const ProjectPage();

      case menu_business:
        page = const BusinessPage();
      case menu_expend:
        page = const ExpendPage();
      case menu_report:
      case menu_report_by_project:
        page = const ReportPage(
          reportType: menu_report_by_project,
        );
      case menu_report_expend:
        page = const ReportPage(
          reportType: menu_report_expend,
        );
      case menu_setting:
        page = const SettingPage();
      case menu_house_type_setting:
        page = const HouseTypePage();
      case menu_unit_measure_setting:
        page = const MeasureUnitPage();
      case menu_expand_type_setting:
        page = const ExpenseTypePage();
      default:
        page = Center(
          child: TextWidget(
            "Other Page",
            color: const Color(0xFF171719),
            fontSize: 22,
          ),
        );
    }
    return page;
  }
}
