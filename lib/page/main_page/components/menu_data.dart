part of '../main_page.dart';

const menu_business = 'អាជីវកម្ម';
const menu_customer = 'អតិថិជន';
const menu_customer_and_project = 'អតិថិជន និងគម្រោង';
const menu_expand_type_setting = 'ប្រភេទចំណាយ';
const menu_expend = 'ចំណាយ';
const menu_house_type_setting = 'ប្រភេទផ្ទះ';
const menu_item = 'បញ្ជីទំនិញ';
const menu_master_plan = 'គម្រោងមេ';
const menu_project = 'គម្រោង';
const menu_report = 'របាយការណ៍';
const menu_report_by_project = 'របាយការណ៍តាមគម្រោង';
const menu_report_expend = 'របាយការណ៍ចំណាយ';
const menu_setting = 'ការកំណត់';
const menu_unit_measure_setting = 'ឯកតា';
const menu_user_setting = 'គ្រប់គ្រងគណនីប្រើប្រាស់';

final menuTree = TreeNode.root()
  ..addAll(
    [
      TreeNode(
        key: menu_master_plan,
        data: Icons.precision_manufacturing_rounded,
      ),
      TreeNode(
        key: menu_item,
        data: Icons.assessment_rounded,
      ),
      TreeNode(key: menu_customer_and_project, data: Icons.people_alt)
        ..addAll([
          TreeNode(key: menu_customer),
          TreeNode(key: menu_project),
        ]),
      TreeNode(key: menu_business, data: Icons.business),
      TreeNode(key: menu_expend, data: Icons.data_exploration_rounded),
      TreeNode(key: menu_report, data: Icons.table_chart)
        ..addAll([
          TreeNode(key: menu_report_by_project),
          TreeNode(key: menu_report_expend),
        ]),
      TreeNode(key: menu_setting, data: Icons.settings)
        ..addAll([
          TreeNode(key: menu_house_type_setting),
          TreeNode(key: menu_unit_measure_setting),
          TreeNode(key: menu_user_setting),
          TreeNode(key: menu_expand_type_setting),
        ]),
    ],
  );
