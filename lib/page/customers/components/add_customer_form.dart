import 'package:get/get.dart';
import 'package:master_plan/core/utils/container_decoration.dart';
import 'package:master_plan/data/models/request_model/add_customer_req_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/shared/widgets/bottom_wrapper.dart';

class AddCustomerForm extends StatefulWidget {
  AddCustomerReqModel reqModel;
  AddCustomerForm({
    super.key,
    required this.reqModel,
  });

  @override
  State<AddCustomerForm> createState() => _AddCustomerFormState();
}

class _AddCustomerFormState extends State<AddCustomerForm> {
  @override
  Widget build(BuildContext context) {
    double _keyWidth = 100;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: Get.height - 200),
      child: Scaffold(
        body: ListView(
          children: [
            ValuePairWidgetWithDyanamicValueWidget(
              title: 'ឈ្មោះ',
              keyWidth: _keyWidth,
              valueWidget: CustomTextField(
                onValueChange: (value) {},
              ),
            ),
            Row(
              children: [
                TextWidget('ទំនាក់ទំនង', align: TextAlign.left),
              ],
            ),
            Gap(10),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final contact = widget.reqModel.contactList[index];
                return Container(
                  decoration: ContainerDecoration.rounded(),
                  padding: EdgeInsets.all(10),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    ValuePairWidgetWithDyanamicValueWidget(
                      title: 'ឈ្មោះ',
                      keyWidth: _keyWidth,
                      valueWidget: CustomTextField(
                        initialValue: contact.name,
                        onValueChange: (value) {},
                      ),
                    ),
                    ValuePairWidgetWithDyanamicValueWidget(
                      title: 'លេខទូរស័ព្ទ',
                      keyWidth: _keyWidth,
                      valueWidget: CustomTextField(
                        initialValue: contact.phone,
                        onValueChange: (value) {},
                      ),
                    ),
                    ValuePairWidgetWithDyanamicValueWidget(
                      title: 'អាសយដ្ឋាន',
                      keyWidth: _keyWidth,
                      valueWidget: CustomTextField(
                        initialValue: contact.address,
                        onValueChange: (value) {},
                      ),
                    ),
                    ValuePairWidgetWithDyanamicValueWidget(
                      title: 'កំណត់ចំណាំ',
                      keyWidth: _keyWidth,
                      valueWidget: CustomTextField(
                        initialValue: contact.note,
                        onValueChange: (value) {},
                      ),
                    ),
                  ]),
                );
              },
              separatorBuilder: (context, index) => Gap(10),
              itemCount: widget.reqModel.contactList.length,
            ),
            Gap(10),
            RoundedButton(
                text: 'បន្ថែមទំនាក់ទំនង',
                onPress: () {
                  widget.reqModel.contactList.add(
                    CustomerContactPerson.mock(''),
                  );
                  setState(
                    () {},
                  );
                }),
            Gap(20),
          ],
        ),
        bottomNavigationBar: BottomWrapper(
          child: SizedBox(height: 54, child: SaveButton(onTap: Get.back)),
        ),
      ),
    );
  }
}
