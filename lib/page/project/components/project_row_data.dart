import 'package:master_plan/core/utils/container_decoration.dart';
import 'package:master_plan/index.dart';

import '../../../data/models/project_res_model.dart';

Widget ProjectRowDataWidget({
  required int index,
}) {
  String status = 'កំពុងដំណើរការ';
  Color statusColor = Colors.blue;
  if (index % 2 == 0) {
    status = "បានបញ្ចប់";
    statusColor = Colors.red;
  }
  if (index % 3 == 0) {
    status = "កំពុងរងចាំ";
    statusColor = Colors.yellow[800]!;
  }

  ProjectResModel data = ProjectResModel(
    id: '001',
    name: 'វិមានភ្នំពេញ គម្រោង១២',
    customerName: 'វិមានភ្នំពេញ',
    status: status,
  );
  return Container(
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
          child: TextWidget(data.customerName),
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                width: 150,
                decoration: ContainerDecoration.rounded(
                  fillColor: statusColor,
                  borderColor: Colors.transparent,
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextWidget(
                  status,
                  color: Colors.white,
                  align: TextAlign.center,
                ),
              ),
            ],
          ),
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
                  onPressed: () {},
                  child: TextWidget('បញ្ចប់'),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
