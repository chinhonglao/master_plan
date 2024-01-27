import 'package:master_plan/data/models/customer_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/page/project/components/add_project_form.dart';

import '../../../shared/widgets/value_pair_widget.dart';

Widget CustomerRowDataWidget(
  BuildContext context, {
  required int index,
}) {
  CustomerResModel data = CustomerResModel(
    id: '001',
    name: 'វិមានភ្នំពេញ',
    contactName: 'សុក្រ សៅ',
    contactNumber: '012 123 123',
    projects: [
      'VMPP 9',
      'VMPP 10',
      'VMPP 11',
      'VMPP 12',
      'VMPP 13',
      'VMPP 14',
    ],
  );
  return GestureDetector(
    onTap: () {
      String project = '';
      data.projects.forEach((p) {
        project += p + '\n\n';
      });

      project = project.substring(0, project.length - 1);
      DialogMethod().showBaseDialog(
        context,
        title: 'អតិថិជន',
        child: Column(
          children: [
            ValuePairWidget(
              key: 'ឈ្មោះអតិថិជន',
              value: data.name,
              keyWidth: 150,
            ),
            ValuePairWidget(
              key: 'ឈ្មោះទំនាក់ទំនង',
              value: data.contactName,
              keyWidth: 150,
            ),
            ValuePairWidget(
              key: 'លេខទូរស័ព្ទ',
              value: data.contactNumber,
              keyWidth: 150,
            ),
            ValuePairWidget(
              key: 'គម្រោង',
              value: project.substring(0, project.length - 2),
              keyWidth: 150,
            ),
            RoundedButton(
              onPress: () {},
              text: 'កែប្រែ',
              fillColor: Colors.blue,
              textColor: Colors.white,
            ),
            Gap(20),
          ],
        ),
      );
    },
    child: Container(
      color: AppColor.dataRowColor(index),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 50, child: TextWidget(index.toString())),
          Gap(8),
          Expanded(
            child: TextWidget(data.name),
          ),
          Expanded(
            child: TextWidget(data.contactName),
          ),
          Expanded(
            child: TextWidget(data.contactNumber),
          ),
          Expanded(
            child: TextWidget(data.projects.length.toString()),
          ),
          Expanded(
            child: IntrinsicWidth(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: TextWidget('កែប្រែ'),
                  ),
                  Gap(10),
                  ElevatedButton(
                    child: TextWidget('បន្ថែមគម្រោង'),
                    onPressed: () {
                      DialogMethod().showBaseDialog(
                        context,
                        title: 'បន្ថែមគម្រោង',
                        child: AddProjectForm(
                          initialCustomer: '1',
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
