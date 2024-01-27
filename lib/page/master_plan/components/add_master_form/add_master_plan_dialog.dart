import 'package:get/get.dart';
import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/data/models/request_model/house_type_req_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/shared/value_picker/business_picker.dart';
import 'package:master_plan/shared/widgets/bottom_wrapper.dart';

import 'add_house_type_form.dart';

class AddMasterPlanDialogForm extends StatefulWidget {
  const AddMasterPlanDialogForm({super.key});

  @override
  State<AddMasterPlanDialogForm> createState() =>
      _AddMasterPlanDialogFormState();
}

class _AddMasterPlanDialogFormState extends State<AddMasterPlanDialogForm> {
  String selectedCustomer = 'ជ្រើសរើស';
  String selectedProject = 'ជ្រើសរើស';
  String selectedBusiness = 'ជ្រើសរើស';
  double labelWidth = 150;
  List<HouseTypeRequestModel> houseTypeList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: Get.height - 200,
      ),
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
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
                      initialValue: selectedCustomer,
                      onSelectedCustomer: (newValue) {
                        setState(() {
                          selectedCustomer = newValue;
                        });
                      },
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
                      initialValue: selectedBusiness,
                      onSelectedBusiness: (newValue) {
                        setState(() {
                          selectedBusiness = newValue;
                        });
                      },
                    ),
                  ),
                ),
                Gap(AppSize.Space_16),
                Expanded(
                  child: ValuePairWidgetWithDyanamicValueWidget(
                    title: 'គម្រោង',
                    keyWidth: labelWidth,
                    valueWidget: ProjectPicker(
                      initialValue: selectedProject,
                      customerId: selectedCustomer,
                      onSelectedCustomer: (newValue) {
                        setState(() {
                          selectedProject = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AddHouseTypeForm(
                  index: index,
                );
              },
              separatorBuilder: (context, index) => Gap(16),
              itemCount: houseTypeList.length,
            ),
            Gap(AppSize.Size_16),
            RoundedButton(
              text: 'បន្ថែមប្រភេទផ្ទះ',
              onPress: () {
                houseTypeList.add(
                  HouseTypeRequestModel(
                    houseTypeId: '',
                    houseTypeName: '',
                    qty: '0',
                    itemList: [],
                  ),
                );
                print(houseTypeList.length);
                setState(() {});
              },
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
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
