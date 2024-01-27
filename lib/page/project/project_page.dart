import 'package:master_plan/index.dart';
import 'package:master_plan/page/project/components/add_project_form.dart';

import 'components/project_row_data.dart';
import 'components/project_table_header.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_project,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: RoundedButton(
            text: 'បន្ថែមគម្រោង',
            textColor: Colors.blue,
            leadingIcon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.add_location_alt_sharp,
                color: Colors.blue,
              ),
            ),
            onPress: () {
              DialogMethod().showBaseDialog(
                context,
                title: 'បន្ថែមគម្រោង',
                formWidth: 500,
                child: AddProjectForm(initialCustomer: ''),
                barrierDismissible: false,
              );
            },
          ),
        ),
      ],
      child: Column(
        children: [
          ProjectTableHeader(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ProjectRowDataWidget(index: index + 1);
              },
              separatorBuilder: (context, index) => SizedBox.shrink(),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
