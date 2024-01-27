import 'package:master_plan/index.dart';
import 'package:master_plan/page/lib/main.dart';

class ReportPage extends StatelessWidget {
  final String reportType;
  const ReportPage({super.key, required this.reportType});
  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: reportType,
      child: AddItemPage(), // TextWidget(reportType),
    );
  }
}
