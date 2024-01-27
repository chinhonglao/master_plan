import 'package:get/get.dart';
import 'package:master_plan/data/models/request_model/house_type_req_model.dart';

class AddMasterPlanController extends GetxController {
  int selectedTabIndex = 0;
  String selectedCustomer = 'ជ្រើសរើស';
  String selectedProject = 'ជ្រើសរើស';
  String selectedBusiness = 'ជ្រើសរើស';
  List<HouseTypeRequestModel> houseTypeList = [];

  void changeSelectedIndex(int newIndex) {
    selectedTabIndex = newIndex;
    update();
  }

  void setSelectedBusiness(String newValue) {
    selectedBusiness = newValue;
    update();
  }

  void setSelectedCustomer(String newValue) {
    selectedCustomer = newValue;
    update();
  }

  void setSelectedProject(String newValue) {
    selectedProject = newValue;
    update();
  }
}
