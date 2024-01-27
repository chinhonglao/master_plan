import 'package:get/get.dart';
import 'package:master_plan/page/add_master_plan_page/add_master_page_binding.dart';
import 'package:master_plan/page/add_master_plan_page/add_master_plan_page.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AddMasterPlanPage.routeName,
      page: AddMasterPlanPage.new,
      binding: AddMasterPageBinding(),
    ),
  ];
}
