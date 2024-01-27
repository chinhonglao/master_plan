import 'package:get/get.dart';
import 'package:master_plan/index.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_business,
      child: Container(
        width: Get.width,
        child: DataTable(
          columnSpacing: 20,
          columns: [
            DataColumn(label: TextWidget('ល.រ')),
            DataColumn(label: TextWidget('អាជីវកម្ម')),
            DataColumn(label: TextWidget('សកម្មភាព')),
          ],
          rows: [
            DataRow(
                color: MaterialStateColor.resolveWith(
                  (states) => AppColor.dataRowColor(1),
                ),
                cells: [
                  DataCell(TextWidget('1')),
                  DataCell(TextWidget('ដែក')),
                  DataCell(
                    ElevatedButton(
                      onPressed: () {},
                      child: TextWidget('កែប្រែ'),
                    ),
                  ),
                ]),
            DataRow(cells: [
              DataCell(TextWidget('1')),
              DataCell(TextWidget('ដែក')),
              DataCell(
                ElevatedButton(
                  onPressed: () {},
                  child: TextWidget('កែប្រែ'),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
