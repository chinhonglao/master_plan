import 'package:get/get.dart';
import 'package:master_plan/data/models/request_model/add_item_req_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/shared/value_picker/measure_unit_picker.dart';

class AddItemForm extends StatefulWidget {
  AddItemReqModel reqModel;
  AddItemForm({
    super.key,
    required this.reqModel,
  });

  @override
  State<AddItemForm> createState() => _AddItemFormState();
}

class _AddItemFormState extends State<AddItemForm> {
  double _keyWidth = 100;
  late AddItemReqModel reqModel = widget.reqModel;
  late List<String> unitList = widget.reqModel.unitMeasureList.toList();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValuePairWidgetWithDyanamicValueWidget(
          title: 'ឈ្មោះ',
          keyWidth: _keyWidth,
          valueWidget: CustomTextField(onValueChange: (value) {
            reqModel = reqModel.copyWith(name: value);
          }),
        ),
        ValuePairWidgetWithDyanamicValueWidget(
          title: 'ទំហំ',
          keyWidth: _keyWidth,
          valueWidget: CustomTextField(onValueChange: (value) {
            reqModel = reqModel.copyWith(dimension: value);
          }),
        ),
        ValuePairWidgetWithDyanamicValueWidget(
          title: 'ខ្នាត',
          keyWidth: _keyWidth,
          crossAxisAlignment: CrossAxisAlignment.start,
          valueWidget: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return MeasureUnitPicker(
                    initialValue: unitList[index],
                    onSelectedUnit: (unit) {
                      unitList[index] = unit;
                      setState(() {});
                    },
                  );
                },
                separatorBuilder: (context, index) => Gap(8),
                itemCount: unitList.length,
              ),
              Gap(8),
              MeasureUnitPicker(
                initialValue: 'ជ្រើសរើសខ្នាត',
                onSelectedUnit: (unit) {
                  print(unit);
                  unitList.add(unit);
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        ValuePairWidgetWithDyanamicValueWidget(
          title: 'ថ្លៃលក់',
          keyWidth: _keyWidth,
          valueWidget: CustomTextField(onValueChange: (value) {
            reqModel = reqModel.copyWith(price: value);
          }),
        ),
        ValuePairWidgetWithDyanamicValueWidget(
          title: 'ថ្លៃដើម',
          keyWidth: _keyWidth,
          valueWidget: CustomTextField(onValueChange: (value) {
            reqModel = reqModel.copyWith(cost: value);
          }),
        ),
        Gap(20),
        SaveButton(onTap: Get.back),
        Gap(20),
      ],
    );
  }
}
