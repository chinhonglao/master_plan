import 'package:get/get.dart';
import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/data/models/request_model/house_type_req_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/page/add_master_plan_page/add_master_plan_controller.dart';
import 'package:master_plan/page/master_plan/components/add_master_form/add_house_type_form.dart';
import 'package:master_plan/shared/value_picker/business_picker.dart';
import 'package:master_plan/shared/widgets/bottom_wrapper.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class AddMasterPlanPage extends StatefulWidget {
  static const routeName = '/add_master_plan';
  const AddMasterPlanPage({super.key});

  @override
  State<AddMasterPlanPage> createState() => _AddMasterPlanPageState();
}

class _AddMasterPlanPageState extends State<AddMasterPlanPage> {
  final _controller = Get.find<AddMasterPlanController>();
  double labelWidth = 150;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(),
          body: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              Row(
                children: [
                  Expanded(
                    child: ValuePairWidgetWithDyanamicValueWidget(
                      title: 'លេខគម្រោង',
                      valueWidget: TextWidget('TP-021223-001'),
                      keyWidth: labelWidth,
                    ),
                  ),
                  Gap(AppSize.Space_16),
                  Expanded(
                    child: ValuePairWidgetWithDyanamicValueWidget(
                      title: 'អតិថិជន',
                      keyWidth: labelWidth,
                      valueWidget: CustomerPicker(
                        initialValue: controller.selectedCustomer,
                        onSelectedCustomer: controller.setSelectedCustomer,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ValuePairWidgetWithDyanamicValueWidget(
                      title: 'អាជីវកម្ម',
                      keyWidth: labelWidth,
                      valueWidget: BiusinessPicker(
                        initialValue: controller.selectedBusiness,
                        onSelectedBusiness: controller.setSelectedBusiness,
                      ),
                    ),
                  ),
                  Gap(AppSize.Space_16),
                  Expanded(
                    child: ValuePairWidgetWithDyanamicValueWidget(
                      title: 'គម្រោង',
                      keyWidth: labelWidth,
                      valueWidget: ProjectPicker(
                        initialValue: controller.selectedProject,
                        customerId: controller.selectedCustomer,
                        onSelectedCustomer: controller.setSelectedProject,
                      ),
                    ),
                  ),
                ],
              ),
              StickyHeader(
                header: Container(
                  height: 50,
                  margin: EdgeInsets.only(bottom: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      ...List.generate(
                        controller.houseTypeList.length,
                        (index) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: RoundedButton(
                                fillColor: controller.selectedTabIndex == index
                                    ? Colors.blue
                                    : null,
                                textColor: controller.selectedTabIndex == index
                                    ? Colors.white
                                    : null,
                                text: controller.houseTypeList[index]
                                        .houseTypeName.isEmpty
                                    ? '(ជ្រើសរើសប្រភេទផ្ទះ)'
                                    : controller
                                        .houseTypeList[index].houseTypeName,
                                onPress: () {
                                  controller.changeSelectedIndex(index);
                                }),
                          ),
                        ),
                      ),
                      RoundedButton(
                          text: 'បន្ថែមប្រភេទផ្ទះ',
                          textColor: Colors.white,
                          fillColor: Colors.green,
                          leadingIcon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ),
                          ),
                          onPress: () {
                            controller.houseTypeList.add(
                              HouseTypeRequestModel(
                                houseTypeId: '',
                                houseTypeName: '',
                                qty: '0',
                                itemList: [],
                              ),
                            );
                            controller.changeSelectedIndex(
                              controller.houseTypeList.length - 1,
                            );
                          }),
                    ],
                  ),
                ),
                content: IndexedStack(
                  index: controller.selectedTabIndex,
                  children: [
                    ...List.generate(
                      controller.houseTypeList.length,
                      (index) => AddHouseTypeForm(
                        index: index,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppSize.Size_16),
            ],
          ),
          bottomNavigationBar: BottomWrapper(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ValuePairWidgetWithDyanamicValueWidget(
                  title: 'ចំណូលរំពឹងទុក',
                  valueWidget: FormatCurrencyWidget('20000000'),
                ),
                Gap(AppSize.Space_16),
                ValuePairWidgetWithDyanamicValueWidget(
                  title: 'ចំណាយរំពឹងទុក',
                  valueWidget: FormatCurrencyWidget('10000000'),
                ),
                Gap(AppSize.Space_16),
                SaveButton(
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
