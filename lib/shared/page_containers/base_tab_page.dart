import 'package:master_plan/index.dart';

class BaseTabPage extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget> actions;
  const BaseTabPage({
    super.key,
    required this.title,
    required this.child,
    this.actions = const [],
  });
  @override
  Widget build(BuildContext context) {
    if (actions.isNotEmpty) actions.add(Gap(16));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: TextWidget(
          title,
          color: Colors.white,
        ),
        actions: actions,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: child,
      ),
    );
  }
}
