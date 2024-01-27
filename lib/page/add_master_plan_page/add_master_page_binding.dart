import 'package:get/get.dart';
import 'package:master_plan/page/add_master_plan_page/add_master_plan_controller.dart';

class AddMasterPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddMasterPlanController());
  }
}
