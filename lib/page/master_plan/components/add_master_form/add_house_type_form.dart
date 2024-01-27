import 'package:get/get.dart';
import 'package:master_plan/core/const/app_size.dart';
import 'package:master_plan/core/utils/container_decoration.dart';
import 'package:master_plan/data/models/request_model/house_type_req_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/page/add_master_plan_page/add_master_plan_controller.dart';
import 'package:master_plan/shared/value_picker/item_picker.dart';
import 'package:sticky_headers/sticky_headers.dart';

class AddHouseTypeForm extends StatefulWidget {
  final int index;
  const AddHouseTypeForm({
    super.key,
    required this.index,
  });

  @override
  State<AddHouseTypeForm> createState() => _AddHouseTypeFormState();
}

class _AddHouseTypeFormState extends State<AddHouseTypeForm> {
  final _controller = Get.find<AddMasterPlanController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      builder: (controller) {
        final HouseTypeRequestModel houseTypeModel =
            controller.houseTypeList[widget.index];
        return Container(
          decoration: ContainerDecoration.rounded(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.houseTypeList.removeAt(widget.index);
                    },
                    child: Container(
                      padding: EdgeInsets.all(AppSize.Space_8),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(11),
                          )),
                      child: Icon(
                        Icons.delete_forever_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(AppSize.Space_16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 54,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ValuePairWidgetWithDyanamicValueWidget(
                              verticalPadding: 0,
                              title: 'ប្រភេទផ្ទះ',
                              keyWidth: 150,
                              valueWidget: HouseTypePicker(
                                height: 50,
                                initialValue:
                                    houseTypeModel.houseTypeName.isEmpty
                                        ? 'ជ្រើសរើស'
                                        : houseTypeModel.houseTypeName,
                                onSelectedHouseType: (newValue) {
                                  houseTypeModel.houseTypeName = newValue;
                                  controller.update();
                                },
                              ),
                            ),
                          ),
                          Gap(AppSize.Space_16),
                          Container(
                            width: 150,
                            child: CustomTextField(
                              hintText: 'ចំនួនផ្ទះ',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(AppSize.Space_16),
                    StickyHeader(
                      header: _headerRow(),
                      content: ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return _itemRow(() {
                            houseTypeModel.itemList.removeAt(index);
                            setState(() {});
                          });
                        },
                        separatorBuilder: (context, index) =>
                            Gap(AppSize.Space_8),
                        itemCount: houseTypeModel.itemList.length,
                      ),
                    ),
                    Gap(AppSize.Space_16),
                    RoundedButton(
                      text: 'បន្ថែមទំនិញ',
                      fillColor: AppColor.blue2C45E8,
                      textColor: Colors.white,
                      onPress: () {
                        houseTypeModel.itemList.add(
                          ItemInHouseTypeReqModel(
                            itemId: '1',
                            itemName: 'បង្អួច',
                            qtyPerUnit: '4',
                            deductionQty: '0',
                          ),
                        );
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _headerRow() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextWidget('ទំនិញ'),
          ),
          Gap(AppSize.Space_16),
          Expanded(
            child: TextWidget('បរិមាណ/ផ្ទះ'),
          ),
          Gap(AppSize.Space_16),
          Expanded(
            child: TextWidget('បរិមាណដកចេញ'),
          ),
          Gap(AppSize.Space_16),
          Expanded(
            child: TextWidget('បរិមានសរុប'),
          ),
          Gap(AppSize.Space_16),
          Expanded(
            child: TextWidget('ដកទំនិញ'),
          ),
        ],
      ),
    );
  }

  Widget _itemRow(VoidCallback onItemRemove) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ItemPicker(
            initialValue: 'ទ្វាបន្ទប់ទឹក',
            onItemSelected: (newValue) {},
          ),
        ),
        Gap(AppSize.Space_16),
        Expanded(
          child: CustomTextField(),
        ),
        Gap(AppSize.Space_16),
        Expanded(
          child: CustomTextField(),
        ),
        Gap(AppSize.Space_16),
        Expanded(
          child: CustomTextField(),
        ),
        Gap(AppSize.Space_16),
        Expanded(
          child: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.red,
            ),
            onPressed: onItemRemove,
          ),
        ),
      ],
    );
  }
}
