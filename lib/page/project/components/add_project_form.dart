import 'package:master_plan/index.dart';

class AddProjectForm extends StatefulWidget {
  final String initialCustomer;
  final bool isEditMode;
  const AddProjectForm({
    super.key,
    required this.initialCustomer,
    this.isEditMode = false,
  });
  @override
  State<AddProjectForm> createState() => _AddProjectFormState();
}

class _AddProjectFormState extends State<AddProjectForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValuePairWidgetWithDyanamicValueWidget(
          title: 'អតិថិជន',
          keyWidth: 100,
          valueWidget: CustomerPicker(
            initialValue: '',
            onSelectedCustomer: (customer) {},
          ),
        ),
        ValuePairWidgetWithDyanamicValueWidget(
          keyWidth: 100,
          title: 'ឈ្មោះគម្រោង',
          valueWidget: CustomTextField(),
        ),
        Gap(20),
        SaveButton(onTap: () {}),
        Gap(20),
      ],
    );
  }
}
